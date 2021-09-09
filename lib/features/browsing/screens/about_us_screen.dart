import 'package:flutter/material.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/style/text.dart';
import 'package:grab_grip/utils/sized_box.dart';

class AboutUsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Container(
          color: AppColors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBoxHeight.h24(),
                SizedBoxHeight.h24(),
                Text(
                  "ABOUT CARBON",
                  style: AppTextStyles.horizontal_list_title,
                ),
                SizedBoxHeight.h24(),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    "Carbon is a pioneering media production. Consistently since inception, Carbon has been the number one most prolific media production in the middle east with a lean but reliable international presence. Carbon creates innovative, disruptive ideas that locate and involve organizations and brands in the emotive and culture axis, to give them their projected share of the future." +
                        "\n\nCarbon builds brands that are defined by their passions and their perspectives. Carbon prides itself on building & sustaining its creative reputation. Carbon has diversified its activities in relation to the evolution of the market but remained faithful to its faithfully basic principles: creativity, artistic added value, and professional ethics." +
                        "\n\nAs effective as engaging our output is supposed to be, we are constantly evolving Audience, drivers, relevance, credibility, engagement leads to the distinctive core idea It runs in our blood, and creativity is at the heart of everything we do We thrive on thinking, we push creative potential to deliver the coveted awe-inspiring and impactful results,we harness the power of storytelling.",
                    style: AppTextStyles.about_us_paragraph,
                  ),
                ),
                SizedBoxHeight.h24(),
                SizedBoxHeight.h24(),
                Text(
                  "WHY CARBON ?",
                  style: AppTextStyles.horizontal_list_title,
                ),
                SizedBoxHeight.h24(),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    "Creative thinking" +
                        "\n\nWe can help you develop your concept and suggest creative solutions that will deliver your message to your audience. Whether your project is the recording , archiving of an event, a co plex multimedia production, a live stream or just a short video clip, we'll work with you as partners to help you reach your goal." +
                        "\n\nInteractive design" +
                        "\n\nWe process interactive designs in which designers focus on creating engaging interfaces with logic and thought out behaviors and actions, and we think outside the box and we have the professional experience that you need." +
                        "\n\nFast performance" +
                        "\n\nIn carbon we realize that some work must be accomplished in a short time. So, we need to be flexible and innovative when we face more sophisticated business, and do our best to be our works the best.",
                    style: AppTextStyles.about_us_paragraph,
                  ),
                ),
                SizedBoxHeight.h24(),
                SizedBoxHeight.h24(),
                Text(
                  "CARBON PHILOSOPHY",
                  style: AppTextStyles.horizontal_list_title,
                ),
                SizedBoxHeight.h24(),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    "We believe in the combined power of creativity and analytics and believe in partnering with you to create an integrated marketing effort. Our team is our family." +
                        "\n\nWe love what we do and love working together, extending our family with each project." +
                        "\n\nYou'll get the benefits of a team that listens, a team that is creative and experienced. And a team that uses the latest technology tools to ensure your work.",
                    style: AppTextStyles.about_us_paragraph,
                  ),
                ),
                SizedBoxHeight.h24(),
                SizedBoxHeight.h24(),
                Text(
                  "CARBON TEAM",
                  style: AppTextStyles.horizontal_list_title,
                ),
                SizedBoxHeight.h24(),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    "Creative team of Producers, art Directors, Film Directors, Cinematographers, publishers, and video Editors, CG artists, post-production specialists, A diverse team of producers, developers, designers, innovators dedicated to bring ideas to life." +
                        "\n\nWe are a restless bunch of thinkers and dreamers." +
                        "\n\nDedicated inhouse team drafts concepts & produce according to your vision.",
                    style: AppTextStyles.about_us_paragraph,
                  ),
                ),
                SizedBoxHeight.h24(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
