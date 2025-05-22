class GetisoDates {
 List<String> getIsoDates() {
    DateTime now = DateTime.now();
    DateTime yesterday = now.subtract(Duration(days: 1));
    DateTime onlyDateUtc =
        DateTime.utc(yesterday.year, yesterday.month, yesterday.day);
    String startDate = onlyDateUtc.toIso8601String();

    DateTime onlyDateUtcendDate = DateTime.utc(now.year, now.month, now.day);
    String endDate = onlyDateUtcendDate.toIso8601String();

    return [
      startDate,
      endDate,
    ];
  }
}
