import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:musify/API/version.dart';
import 'package:musify/style/app_themes.dart';
import 'package:musify/utilities/url_launcher.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppLocalizations.of(context)!.about,
        ),
      ),
      body: const SingleChildScrollView(child: AboutCards()),
    );
  }
}

class AboutCards extends StatelessWidget {
  const AboutCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 17, left: 8, right: 8, bottom: 6),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Padding(
                  padding: const EdgeInsets.all(13),
                  child: Center(
                    child: Text(
                      'Musify  | $appVersion',
                      style: TextStyle(
                        color: colorScheme.primary,
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: 8, left: 10, right: 10),
          child: Divider(
            color: Colors.white24,
            thickness: 0.8,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8, left: 8, right: 8, bottom: 6),
          child: Card(
            child: ListTile(
              leading: Container(
                height: 50,
                width: 50,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        // 'https://instagram.fbom11-1.fna.fbcdn.net/v/t51.2885-19/94884272_250653142985456_9035375189390524416_n.jpg?stp=dst-jpg_s320x320&_nc_ht=instagram.fbom11-1.fna.fbcdn.net&_nc_cat=108&_nc_ohc=S-_pNc1WsuQAX89ZS3l&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AfCaiTyHfUj9xwoksQxNezH5jnRHNDQnQHlCKTOiG23tkA&oe=643C6743&_nc_sid=8fd12b4',
                        'https://mayurargade.netlify.app/static/media/header3.5e0af3624c703059b9c5.png'),
                  ),
                ),
              ),
              title: const Text(
                'Rohit Kute',
              ),
              subtitle: const Text(
                'Full stack Developer',
              ),
              trailing: Wrap(
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      FluentIcons.code_24_filled,
                      color: colorScheme.primary,
                    ),
                    tooltip: 'Github',
                    onPressed: () {
                      launchURL(
                        Uri.parse('https://github.com/Rohit2813'),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
