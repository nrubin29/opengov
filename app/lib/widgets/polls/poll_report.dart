import 'package:flutter/material.dart';
import 'package:opengov_app/service/http_service.dart';
import 'package:opengov_app/widgets/polls/neapolitan.dart';
import 'package:opengov_common/models/poll.dart';
import 'package:opengov_common/models/report.dart';

class PollReport extends StatefulWidget {
  final Poll poll;

  const PollReport({required this.poll});

  @override
  _PollReportState createState() => _PollReportState();
}

class _PollReportState extends State<PollReport> {
  Report? _report;

  @override
  void initState() {
    super.initState();
    _fetchReport();
  }

  Future<void> _fetchReport() async {
    final response = await HttpService.getReport(widget.poll);

    if (response != null) {
      setState(() {
        _report = response;
      });
    }
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text('Report')),
        body: _report == null
            ? const Center(child: CircularProgressIndicator())
            : Padding(
                padding: const EdgeInsets.all(8),
                child: ListView(
                  children: [
                    Text(
                      widget.poll.topic,
                      style: const TextStyle(
                        fontSize: 34,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      widget.poll.description,
                      style: const TextStyle(fontSize: 20),
                    ),
                    const Text(
                      'Responses',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    for (final comment in _report!.comments)
                      ListTile(
                        title: Text(comment.comment),
                        trailing: Neapolitan(
                          pieces: [
                            comment.agreeCount,
                            comment.passCount,
                            comment.disagreeCount,
                          ],
                          colors: const [
                            Colors.green,
                            Colors.white,
                            Colors.red,
                          ],
                        ),
                      ),
                  ],
                ),
              ),
      );
}
