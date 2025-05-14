library flutter_sca;

import 'dart:io';

void main(List<String> args) async {
  print('Running flutter test...');
  final result = await Process.start('flutter', ['test']);
  await stdout.addStream(result.stdout);
  await stderr.addStream(result.stderr);
  final exitCode = await result.exitCode;

  if (exitCode != 0) {
    print('Tests failed with exit code $exitCode');
    exit(exitCode);
  } else {
    print('All tests passed!');
  }
}
