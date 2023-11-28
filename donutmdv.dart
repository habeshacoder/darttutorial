import 'dart:math' as math;

const double thetaSpacing = 0.07;
const double phiSpacing = 0.02;

const double R1 = 0.5;
const double R2 = 1;
const double K2 = 3;

const int screenWidth = 40;
const int screenHeight = 12;
const double K1 = screenWidth * K2 * 3 / (8 * (R1 + R2));

const List<String> colorPalette = [
  '\x1B[31m', // Red
  '\x1B[32m', // Green
  '\x1B[33m', // Yellow
  '\x1B[34m', // Blue
  '\x1B[35m', // Magenta
  '\x1B[36m', // Cyan
];

void renderFrame(double A, double B) {
  double cosA = math.cos(A), sinA = math.sin(A);
  double cosB = math.cos(B), sinB = math.sin(B);

  List<List<String>> output = List.generate(
    screenHeight,
    (_) => List<String>.filled(screenWidth, ' '),
  );
  List<List<double>> zBuffer = List.generate(
    screenHeight,
    (_) => List<double>.filled(screenWidth, 0),
  );

  for (double theta = 0; theta < 2 * math.pi; theta += thetaSpacing) {
    double cosTheta = math.cos(theta), sinTheta = math.sin(theta);

    for (double phi = 0; phi < 2 * math.pi; phi += phiSpacing) {
      double cosPhi = math.cos(phi), sinPhi = math.sin(phi);

      double circleX = R2 + R1 * cosTheta;
      double circleY = R1 * sinTheta;

      double x = circleX * (cosB * cosPhi + sinA * sinB * sinPhi) -
          circleY * cosA * sinB;
      double y = circleX * (sinB * cosPhi - sinA * cosB * sinPhi) +
          circleY * cosA * cosB;
      double z = K2 + cosA * circleX * sinPhi + circleY * sinA;
      double ooz = 1 / z;

      int xp = ((screenWidth / 2) + K1 * ooz * x).toInt();
      int yp = ((screenHeight / 2) - K1 * ooz * y).toInt();

      if (xp >= 0 && xp < screenWidth && yp >= 0 && yp < screenHeight) {
        double L = cosPhi * cosTheta * sinB -
            cosA * cosTheta * sinPhi -
            sinA * sinTheta +
            cosB * (cosA * sinTheta - cosTheta * sinA * sinPhi);

        if (L > 0) {
          if (ooz > zBuffer[yp][xp]) {
            zBuffer[yp][xp] = ooz;
            int colorIndex = ((L + 1) / 2 * colorPalette.length).toInt();
            String colorCode = colorPalette[colorIndex % colorPalette.length];
            output[yp][xp] = colorCode + '█\x1B[0m';
          }
        }
      }
    }
  }

  print('\x1B[2J\x1B[0;0H');
  for (int j = 0; j < screenHeight; j++) {
    print(output[j].join());
  }
}

void main() {
  double A = 0;
  double B = 0;

  while (true) {
    renderFrame(A, B);
    A += 0.04;
    B += 0.02;
  }
}
