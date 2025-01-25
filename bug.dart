```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Assuming the response body is a JSON string
      final jsonData = jsonDecode(response.body);
      // Process the jsonData
      print(jsonData); 
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle the exception
    print('Error: $e');
    // Rethrow the exception to be handled higher up the call stack
    rethrow;
  }
}

void main() async {
  try {
    await fetchData();
  } catch (e) {
    print('Main Function Error: $e');
  }
}
```