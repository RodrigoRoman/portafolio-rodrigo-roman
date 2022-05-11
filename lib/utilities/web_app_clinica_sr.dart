

import 'package:flutter/material.dart';

class WebAppIMGSpec {
  WebAppIMGSpec({
    required this.image,
    required this.description,

  });

  String image;
  String description;
}



List<WebAppIMGSpec> webAppElements = [
     WebAppIMGSpec(image:'assets/images/web_app_clinica_sr_imgs/search_service.png',description:'''
                      Search products inside the inventory by name or class and filter them by expiration date.
                      You get the first 3 results below the bar. Select the product to add it to the patient's account
                      and choose the location you are taking the product from. 
                  '''),
    WebAppIMGSpec(image:'assets/images/web_app_clinica_sr_imgs/all_results.png',description:'''
                      By hitting enter or clicking the search icon get the all the matching results.
                  '''),
     WebAppIMGSpec(image:'assets/images/web_app_clinica_sr_imgs/balance.png',description:'''
                      Get a balance of the hospital's income and expenses. You have different filter options:
                      Date Range, income, expenses. Compess data by patient, by class or by product.
                  '''),
     WebAppIMGSpec(image:'assets/images/web_app_clinica_sr_imgs/consumtion_list.png',description:'''
                      List of products consumed in each labor turn. This helps the users to corroborate the
                      consumtion with the phisical inventories.
                  '''),
     WebAppIMGSpec(image:'assets/images/web_app_clinica_sr_imgs/create_invoice.png',description:'''
                      Generate an invoice PDF from the patient account. The services and products are grouped by class and the
                      information of the patient is included.
                  '''),
     WebAppIMGSpec(image:'assets/images/web_app_clinica_sr_imgs/sort_expiration.png', description:'''
                      Sort the inventory products by expiration. Each product has a color that indicates the 
                      state of its expiration (red is about to expire, yellow has a decent expiration and green is the ). This is a trafic light system that allows the user to easily check for 
                      products that are about to expire. We always want to be aware of the products that are about to expire so that we 
                      sell them out earlier.
                  '''),
     WebAppIMGSpec(image:'assets/images/web_app_clinica_sr_imgs/pagination.png', description:'''
                      Paginate search results for efficiency. 
                  '''),
     WebAppIMGSpec(image:'assets/images/web_app_clinica_sr_imgs/patient_profile.png',description:'''
                      Register the consumption of each patient. Add medicines, services and keep track 
                      of who adds what and when they do that. Depending on the level of the user they can
                      edit or delete the elemnets in the patient account. 
                  '''),
     WebAppIMGSpec(image:'assets/images/web_app_clinica_sr_imgs/patients.png', description:'''
                      Check the patients who are registered. The patients that are active are outlined in blue.
                      And the patients who have been discharged appear in grey. The active accounts can be edited
                      and the invoice of discharged  patients are still visible and frozen for administrative user accounts. 
                  '''),
     WebAppIMGSpec(image:'assets/images/web_app_clinica_sr_imgs/products.png', description:'''
                      Create, edit, delete and search the products of the inventory. 
                  '''),
     WebAppIMGSpec(image:'assets/images/web_app_clinica_sr_imgs/search_bar.png',description:'''
                      Search by name, principle or category
                  '''),
     WebAppIMGSpec(image:'assets/images/web_app_clinica_sr_imgs/sort_existence.png',description:'''
                      Sort the inventory products by their inventory existence. This option groups the 
                      products with the same name and shows their total existence outlined with a color that
                      indicates the state of their stock. This is a different trafic light system that
                      facilitates taking decisions in regard to which products must be restocked.
                  '''),
     WebAppIMGSpec(image:'assets/images/web_app_clinica_sr_imgs/sort_options.png', description:'''
                      There are different sorting options for the products in the inventory. Each of these
                      sorting options will the search keywords that are provided. So you can search for the specific
                      stock state of a particular poroduct, for instance.
                  '''),
     WebAppIMGSpec(image:'assets/images/web_app_clinica_sr_imgs/sort_patients.png', description:'''
                      Sort the patients registered by their illness type, doctor, or their own name
                  '''),
     WebAppIMGSpec(image:'assets/images/web_app_clinica_sr_imgs/statistics.png', description:'''
                      Register expenses and get the balance by date range
                  '''),
     WebAppIMGSpec(image:'assets/images/web_app_clinica_sr_imgs/time_services.png', description: '''
                      Register services by time fraction by setting a counter or selecting a time range. Useful 
                      for services such as stay in emergency room, use of oxigen, use of surgical tools, etc
                  ''')
];