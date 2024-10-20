String translateValue(double value, int rate) {
  // value * rate
  return (5 + ((value * rate) * 10)).clamp(5, 120).toInt().toString();
}
