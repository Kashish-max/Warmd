List<Map<String, String>> countries = [
  {'name': 'افغانستان', 'code': 'AF', 'currency': 'AFN'},
  {'name': 'Åland', 'code': 'AX', 'currency': 'EUR'},
  {'name': 'الجزائر', 'code': 'DZ', 'currency': 'DZD'},
  {'name': 'American Samoa', 'code': 'AS', 'currency': 'EUR'},
  {'name': 'Andorra', 'code': 'AD', 'currency': 'EUR'},
  {'name': 'Angola', 'code': 'AO', 'currency': 'AOA'},
  {'name': 'Anguilla', 'code': 'AI', 'currency': 'XCD'},
  {'name': 'Antarctica', 'code': 'AQ', 'currency': 'USD'},
  {'name': 'Antigua and Barbuda', 'code': 'AG', 'currency': 'XCD'},
  {'name': 'Argentina', 'code': 'AR', 'currency': 'ARS'},
  {'name': 'Հայաստան', 'code': 'AM', 'currency': 'AMD'},
  {'name': 'Aruba', 'code': 'AW', 'currency': 'ANG'},
  {'name': 'Australia', 'code': 'AU', 'currency': 'AUD'},
  {'name': 'Österreich', 'code': 'AT', 'currency': 'EUR'},
  {'name': 'Azərbaycan', 'code': 'AZ', 'currency': 'AZN'},
  {'name': 'Bahamas', 'code': 'BS', 'currency': 'BSD'},
  {'name': '‏البحرين', 'code': 'BH', 'currency': 'BHD'},
  {'name': 'Bangladesh', 'code': 'BD', 'currency': 'BDT'},
  {'name': 'Barbados', 'code': 'BB', 'currency': 'BBD'},
  {'name': 'Белару́сь', 'code': 'BY', 'currency': 'BYN'},
  {'name': 'België', 'code': 'BE', 'currency': 'EUR'},
  {'name': 'Belize', 'code': 'BZ', 'currency': 'BZD'},
  {'name': 'Bénin', 'code': 'BJ', 'currency': 'XOF'},
  {'name': 'Bermuda', 'code': 'BM', 'currency': 'BMD'},
  {'name': 'ʼbrug-yul', 'code': 'BT', 'currency': 'INR'},
  {'name': 'Bolivia', 'code': 'BO', 'currency': 'BOB'},
  {'name': 'Bosna i Hercegovina', 'code': 'BA', 'currency': 'BAM'},
  {'name': 'Botswana', 'code': 'BW', 'currency': 'BWP'},
  {'name': 'Bouvetøya', 'code': 'BV', 'currency': 'NOK'},
  {'name': 'Brasil', 'code': 'BR', 'currency': 'BRL'},
  {'name': 'British Indian Ocean Territory', 'code': 'IO', 'currency': 'USD'},
  {'name': 'Negara Brunei Darussalam', 'code': 'BN', 'currency': 'BND'},
  {'name': 'България', 'code': 'BG', 'currency': 'BGN'},
  {'name': 'Burkina Faso', 'code': 'BF', 'currency': 'XOF'},
  {'name': 'Burundi', 'code': 'BI', 'currency': 'BIF'},
  {'name': 'Kâmpŭchéa', 'code': 'KH', 'currency': 'KHR'},
  {'name': 'Cameroon', 'code': 'CM', 'currency': 'XAF'},
  {'name': 'Canada', 'code': 'CA', 'currency': 'CAD'},
  {'name': 'Cabo Verde', 'code': 'CV', 'currency': 'CVE'},
  {'name': 'Cayman Islands', 'code': 'KY', 'currency': 'KYD'},
  {'name': 'Ködörösêse tî Bêafrîka', 'code': 'CF', 'currency': 'XAF'},
  {'name': 'Chile', 'code': 'CL', 'currency': 'CLP'},
  {'name': '中国', 'code': 'CN', 'currency': 'CNY'},
  {'name': 'Christmas Island', 'code': 'CX', 'currency': 'AUD'},
  {'name': 'Cocos (Keeling) Islands', 'code': 'CC', 'currency': 'AUD'},
  {'name': 'Colombia', 'code': 'CO', 'currency': 'COP'},
  {'name': 'Komori', 'code': 'KM', 'currency': 'KMF'},
  {'name': 'Cook Islands', 'code': 'CK', 'currency': 'NZD'},
  {'name': 'Costa Rica', 'code': 'CR', 'currency': 'CRC'},
  {'name': "Côte d'Ivoire", 'code': 'CI', 'currency': 'XOF'},
  {'name': 'Hrvatska', 'code': 'HR', 'currency': 'HRK'},
  {'name': 'Cuba', 'code': 'CU', 'currency': 'CUP'},
  {'name': 'Κύπρος', 'code': 'CY', 'currency': 'EUR'},
  {'name': 'Česká republika', 'code': 'CZ', 'currency': 'CZK'},
  {'name': 'Danmark', 'code': 'DK', 'currency': 'DKK'},
  {'name': 'Djibouti', 'code': 'DJ', 'currency': 'DJF'},
  {'name': 'Dominica', 'code': 'DM', 'currency': 'XCD'},
  {'name': 'Ecuador', 'code': 'EC', 'currency': 'USD'},
  {'name': 'Éire', 'code': 'IE', 'currency': 'EUR'},
  {'name': 'مصر‎', 'code': 'EG', 'currency': 'EGP'},
  {'name': 'El Salvador', 'code': 'SV', 'currency': 'SVC'},
  {'name': 'España', 'code': 'ES', 'currency': 'EUR'},
  {'name': 'Guinea Ecuatorial', 'code': 'GQ', 'currency': 'XAF'},
  {'name': 'ኤርትራ', 'code': 'ER', 'currency': 'ETB'},
  {'name': 'Eesti', 'code': 'EE', 'currency': 'EUR'},
  {'name': 'ኢትዮጵያ', 'code': 'ET', 'currency': 'ETB'},
  {'name': 'Falkland Islands', 'code': 'FK', 'currency': 'FKP'},
  {'name': 'Føroyar', 'code': 'FO', 'currency': 'DKK'},
  {'name': 'Fiji', 'code': 'FJ', 'currency': 'FJD'},
  {'name': 'France', 'code': 'FR', 'currency': 'EUR'},
  {'name': 'Guyane française', 'code': 'GF', 'currency': 'EUR'},
  {'name': 'Gabon', 'code': 'GA', 'currency': 'XAF'},
  {'name': 'Gambia', 'code': 'GM', 'currency': 'GMD'},
  {'name': 'საქართველო', 'code': 'GE', 'currency': 'GEL'},
  {'name': 'Deutschland', 'code': 'DE', 'currency': 'EUR'},
  {'name': 'Ghana', 'code': 'GH', 'currency': 'GHS'},
  {'name': 'Gibraltar', 'code': 'GI', 'currency': 'GIP'},
  {'name': 'Ελλάδα', 'code': 'GR', 'currency': 'EUR'},
  {'name': 'Kalaallit Nunaat', 'code': 'GL', 'currency': 'DKK'},
  {'name': 'Grenada', 'code': 'GD', 'currency': 'XCD'},
  {'name': 'Guadeloupe', 'code': 'GP', 'currency': 'EUR'},
  {'name': 'Guam', 'code': 'GU', 'currency': 'USD'},
  {'name': 'Guatemala', 'code': 'GT', 'currency': 'GTQ'},
  {'name': 'Guernsey', 'code': 'GG', 'currency': 'GGP'},
  {'name': 'Guinée', 'code': 'GN', 'currency': 'GNF'},
  {'name': 'Guiné-Bissau', 'code': 'GW', 'currency': 'XOF'},
  {'name': 'Guyana', 'code': 'GY', 'currency': 'GYD'},
  {'name': 'Haïti', 'code': 'HT', 'currency': 'HTG'},
  {'name': 'Heard Island and McDonald Islands', 'code': 'HM', 'currency': 'AUD'},
  {'name': 'Honduras', 'code': 'HN', 'currency': 'HNL'},
  {'name': '香港', 'code': 'HK', 'currency': 'HKD'},
  {'name': 'Ísland', 'code': 'IS', 'currency': 'ISK'},
  {'name': 'India', 'code': 'IN', 'currency': 'INR'},
  {'name': 'Indonesia', 'code': 'ID', 'currency': 'IDR'},
  {'name': 'ایران', 'code': 'IR', 'currency': 'IRR'},
  {'name': 'العراق', 'code': 'IQ', 'currency': 'IQD'},
  {'name': 'Isle of Man', 'code': 'IM', 'currency': 'GBP'},
  {'name': 'יִשְׂרָאֵל', 'code': 'IL', 'currency': 'ILS'},
  {'name': 'Italia', 'code': 'IT', 'currency': 'EUR'},
  {'name': 'Jamaica', 'code': 'JM', 'currency': 'JMD'},
  {'name': '日本', 'code': 'JP', 'currency': 'JPY'},
  {'name': 'Jersey', 'code': 'JE', 'currency': 'GBP'},
  {'name': 'الأردن', 'code': 'JO', 'currency': 'JOD'},
  {'name': 'Қазақстан', 'code': 'KZ', 'currency': 'KZT'},
  {'name': 'Kenya', 'code': 'KE', 'currency': 'KES'},
  {'name': 'Kiribati', 'code': 'KI', 'currency': 'AUD'},
  {'name': '북한', 'code': 'KP', 'currency': 'KPW'},
  {'name': '대한민국', 'code': 'KR', 'currency': 'KRW'},
  {'name': 'Republika e Kosovës', 'code': 'XK', 'currency': 'EUR'},
  {'name': 'الكويت', 'code': 'KW', 'currency': 'KWD'},
  {'name': 'Кыргызстан', 'code': 'KG', 'currency': 'KGS'},
  {'name': 'ສປປລາວ', 'code': 'LA', 'currency': 'LAK'},
  {'name': 'Latvija', 'code': 'LV', 'currency': 'EUR'},
  {'name': 'لبنان', 'code': 'LB', 'currency': 'LBP'},
  {'name': 'Lesotho', 'code': 'LS', 'currency': 'LSL'},
  {'name': 'Liberia', 'code': 'LR', 'currency': 'LRD'},
  {'name': '‏ليبيا', 'code': 'LY', 'currency': 'LYD'},
  {'name': 'Liechtenstein', 'code': 'LI', 'currency': 'CHF'},
  {'name': 'Lietuva', 'code': 'LT', 'currency': 'EUR'},
  {'name': 'Luxembourg', 'code': 'LU', 'currency': 'EUR'},
  {'name': '澳門', 'code': 'MO', 'currency': 'MOP'},
  {'name': 'Македонија', 'code': 'MK', 'currency': 'MKD'},
  {'name': 'Madagasikara', 'code': 'MG', 'currency': 'MGA'},
  {'name': 'Magyarország', 'code': 'HU', 'currency': 'HUF'},
  {'name': 'Malawi', 'code': 'MW', 'currency': 'MWK'},
  {'name': 'Malaysia', 'code': 'MY', 'currency': 'MYR'},
  {'name': 'Maldives', 'code': 'MV', 'currency': 'MVR'},
  {'name': 'Mali', 'code': 'ML', 'currency': 'XOF'},
  {'name': 'Malta', 'code': 'MT', 'currency': 'EUR'},
  {'name': 'M̧ajeļ', 'code': 'MH', 'currency': 'USD'},
  {'name': 'Martinique', 'code': 'MQ', 'currency': 'EUR'},
  {'name': 'موريتانيا', 'code': 'MR', 'currency': 'MRU'},
  {'name': 'Maurice', 'code': 'MU', 'currency': 'MUR'},
  {'name': 'Mayotte', 'code': 'YT', 'currency': 'EUR'},
  {'name': 'México', 'code': 'MX', 'currency': 'MXN'},
  {'name': 'Micronesia', 'code': 'FM', 'currency': 'USD'},
  {'name': 'Moldova', 'code': 'MD', 'currency': 'MDL'},
  {'name': 'Monaco', 'code': 'MC', 'currency': 'EUR'},
  {'name': 'Монгол улс', 'code': 'MN', 'currency': 'MNT'},
  {'name': 'Црна Гора', 'code': 'ME', 'currency': 'EUR'},
  {'name': 'Montserrat', 'code': 'MS', 'currency': 'XCD'},
  {'name': 'المغرب', 'code': 'MA', 'currency': 'MAD'},
  {'name': 'Moçambique', 'code': 'MZ', 'currency': 'MZN'},
  {'name': 'Myanma', 'code': 'MM', 'currency': 'MMK'},
  {'name': 'Namibia', 'code': 'NA', 'currency': 'NAD'},
  {'name': 'Nauru', 'code': 'NR', 'currency': 'AUD'},
  {'name': 'नपल', 'code': 'NP', 'currency': 'NPR'},
  {'name': 'Nederland', 'code': 'NL', 'currency': 'EUR'},
  {'name': 'Netherlands Antilles', 'code': 'AN', 'currency': 'ANG'},
  {'name': 'Nouvelle-Calédonie', 'code': 'NC', 'currency': 'XPF'},
  {'name': 'New Zealand', 'code': 'NZ', 'currency': 'NZD'},
  {'name': 'Nicaragua', 'code': 'NI', 'currency': 'NIO'},
  {'name': 'Niger', 'code': 'NE', 'currency': 'XOF'},
  {'name': 'Nigeria', 'code': 'NG', 'currency': 'NGN'},
  {'name': 'Niuē', 'code': 'NU', 'currency': 'NZD'},
  {'name': 'Norfolk Island', 'code': 'NF', 'currency': 'AUD'},
  {'name': 'Northern Mariana Islands', 'code': 'MP', 'currency': 'USD'},
  {'name': 'Norge', 'code': 'NO', 'currency': 'NOK'},
  {'name': 'عمان', 'code': 'OM', 'currency': 'OMR'},
  {'name': 'O‘zbekiston', 'code': 'UZ', 'currency': 'UZS'},
  {'name': 'Pakistan', 'code': 'PK', 'currency': 'PKR'},
  {'name': 'Palau', 'code': 'PW', 'currency': 'USD'},
  {'name': 'فلسطين', 'code': 'PS', 'currency': 'JOD'},
  {'name': 'Panamá', 'code': 'PA', 'currency': 'PAB'},
  {'name': 'Papua Niugini', 'code': 'PG', 'currency': 'PGK'},
  {'name': 'Paraguay', 'code': 'PY', 'currency': 'PYG'},
  {'name': 'Perú', 'code': 'PE', 'currency': 'PEN'},
  {'name': 'Pilipinas', 'code': 'PH', 'currency': 'PHP'},
  {'name': 'Pitcairn Islands', 'code': 'PN', 'currency': 'NZD'},
  {'name': 'Polska', 'code': 'PL', 'currency': 'PLN'},
  {'name': 'Polynésie française', 'code': 'PF', 'currency': 'XPF'},
  {'name': 'Portugal', 'code': 'PT', 'currency': 'EUR'},
  {'name': 'Puerto Rico', 'code': 'PR', 'currency': 'USD'},
  {'name': 'قطر', 'code': 'QA', 'currency': 'QAR'},
  {'name': 'République du Congo', 'code': 'CG', 'currency': 'XAF'},
  {'name': 'République démocratique du Congo', 'code': 'CD', 'currency': 'CDF'},
  {'name': 'República Dominicana', 'code': 'DO', 'currency': 'DOP'},
  {'name': 'România', 'code': 'RO', 'currency': 'RON'},
  {'name': 'Россия', 'code': 'RU', 'currency': 'RUB'},
  {'name': 'Rwanda', 'code': 'RW', 'currency': 'RWF'},
  {'name': 'La Réunion', 'code': 'RE', 'currency': 'EUR'},
  {'name': 'Saint-Barthélemy', 'code': 'BL', 'currency': 'EUR'},
  {'name': 'Saint Helena', 'code': 'SH', 'currency': 'GBP'},
  {'name': 'Saint Kitts and Nevis', 'code': 'KN', 'currency': 'XCD'},
  {'name': 'Saint Lucia', 'code': 'LC', 'currency': 'XCD'},
  {'name': 'Saint-Martin', 'code': 'MF', 'currency': 'ANG'},
  {'name': 'Saint-Pierre-et-Miquelon', 'code': 'PM', 'currency': 'EUR'},
  {'name': 'Saint Vincent and the Grenadines', 'code': 'VC', 'currency': 'XCD'},
  {'name': 'Samoa', 'code': 'WS', 'currency': 'EUR'},
  {'name': 'San Marino', 'code': 'SM', 'currency': 'EUR'},
  {'name': 'São Tomé e Príncipe', 'code': 'ST', 'currency': 'STN'},
  {'name': 'العربية السعودية', 'code': 'SA', 'currency': 'SAR'},
  {'name': 'Sénégal', 'code': 'SN', 'currency': 'XOF'},
  {'name': 'Србија', 'code': 'RS', 'currency': 'RSD'},
  {'name': 'Seychelles', 'code': 'SC', 'currency': 'SCR'},
  {'name': 'Shqipëria', 'code': 'AL', 'currency': 'ALL'},
  {'name': 'Sierra Leone', 'code': 'SL', 'currency': 'SLL'},
  {'name': 'Singapore', 'code': 'SG', 'currency': 'SGD'},
  {'name': 'Slovensko', 'code': 'SK', 'currency': 'EUR'},
  {'name': 'Slovenija', 'code': 'SI', 'currency': 'EUR'},
  {'name': 'Solomon Islands', 'code': 'SB', 'currency': 'SBD'},
  {'name': 'Soomaaliya', 'code': 'SO', 'currency': 'SOS'},
  {'name': 'South Africa', 'code': 'ZA', 'currency': 'ZAR'},
  {'name': 'South Sudan', 'code': 'SS', 'currency': 'SSP'},
  {'name': 'South Georgia', 'code': 'GS', 'currency': 'GBP'},
  {'name': 'śrī laṃkāva', 'code': 'LK', 'currency': 'LKR'},
  {'name': 'السودان', 'code': 'SD', 'currency': 'SDG'},
  {'name': 'Suomi', 'code': 'FI', 'currency': 'EUR'},
  {'name': 'Suriname', 'code': 'SR', 'currency': 'SRD'},
  {'name': 'Svalbard og Jan Mayen', 'code': 'SJ', 'currency': 'NOK'},
  {'name': 'Swaziland', 'code': 'SZ', 'currency': 'SZL'},
  {'name': 'Sverige', 'code': 'SE', 'currency': 'SEK'},
  {'name': 'Schweiz', 'code': 'CH', 'currency': 'CHF'},
  {'name': 'سوريا', 'code': 'SY', 'currency': 'SYP'},
  {'name': '臺灣', 'code': 'TW', 'currency': 'TWD'},
  {'name': 'Тоҷикистон', 'code': 'TJ', 'currency': 'TJS'},
  {'name': 'Tanzania', 'code': 'TZ', 'currency': 'TZS'},
  {'name': 'Territoire des Terres australes et antarctiques fr', 'code': 'TF', 'currency': 'EUR'},
  {'name': 'Tchad', 'code': 'TD', 'currency': 'XAF'},
  {'name': 'ประเทศไทย', 'code': 'TH', 'currency': 'THB'},
  {'name': 'Timor-Leste', 'code': 'TL', 'currency': 'USD'},
  {'name': 'Togo', 'code': 'TG', 'currency': 'XOF'},
  {'name': 'Tokelau', 'code': 'TK', 'currency': 'NZD'},
  {'name': 'Tonga', 'code': 'TO', 'currency': 'TOP'},
  {'name': 'Trinidad and Tobago', 'code': 'TT', 'currency': 'TTD'},
  {'name': 'تونس', 'code': 'TN', 'currency': 'TND'},
  {'name': 'Türkiye', 'code': 'TR', 'currency': 'TRY'},
  {'name': 'Türkmenistan', 'code': 'TM', 'currency': 'TMT'},
  {'name': 'Turks and Caicos Islands', 'code': 'TC', 'currency': 'USD'},
  {'name': 'Tuvalu', 'code': 'TV', 'currency': 'AUD'},
  {'name': 'Uganda', 'code': 'UG', 'currency': 'UGX'},
  {'name': 'Україна', 'code': 'UA', 'currency': 'UAH'},
  {'name': 'دولة الإمارات العربية المتحدة', 'code': 'AE', 'currency': 'AED'},
  {'name': 'United Kingdom', 'code': 'GB', 'currency': 'GBP'},
  {'name': 'United States', 'code': 'US', 'currency': 'USD'},
  {'name': 'Uruguay', 'code': 'UY', 'currency': 'UYU'},
  {'name': 'Vanuatu', 'code': 'VU', 'currency': 'VUV'},
  {'name': 'Venezuela', 'code': 'VE', 'currency': 'VEF'},
  {'name': 'Vaticano', 'code': 'VA', 'currency': 'EUR'},
  {'name': 'Việt Nam', 'code': 'VN', 'currency': 'VND'},
  {'name': 'British Virgin Islands', 'code': 'VG', 'currency': 'USD'},
  {'name': 'United States Virgin Islands', 'code': 'VI', 'currency': 'USD'},
  {'name': 'Wallis et Futuna', 'code': 'WF', 'currency': 'XPF'},
  {'name': 'اليَمَن', 'code': 'YE', 'currency': 'YER'},
  {'name': 'Zambia', 'code': 'ZM', 'currency': 'ZMW'},
  {'name': 'Zimbabwe', 'code': 'ZW', 'currency': 'ZWD'},
];

// Currencies value for 1 USD (2019 values)
const currencyRates = {
  'AED': 3.672857,
  'AFN': 78.11786,
  'ALL': 110.471189,
  'AMD': 476.485579,
  'ANG': 1.735003,
  'AOA': 496.7435,
  'ARS': 59.642893,
  'AUD': 1.4474,
  'AWG': 1.801,
  'AZN': 1.7025,
  'BAM': 1.753188,
  'BBD': 2.0,
  'BDT': 84.774813,
  'BGN': 1.75109,
  'BHD': 0.376784,
  'BIF': 1866.620736,
  'BMD': 1.0,
  'BND': 1.357793,
  'BOB': 6.914913,
  'BRL': 3.9896,
  'BSD': 1.0,
  'BTN': 70.769344,
  'BWP': 10.977088,
  'BYN': 2.051928,
  'BZD': 2.015669,
  'CAD': 1.315963,
  'CDF': 1654.768439,
  'CHF': 0.985544,
  'CLP': 742.4,
  'CNY': 7.0373,
  'COP': 3376.405081,
  'CRC': 582.12925,
  'CUC': 1.0,
  'CUP': 25.75,
  'CVE': 99.425,
  'CZK': 22.845,
  'DJF': 178,
  'DKK': 6.6915,
  'DOP': 52.799492,
  'DZD': 119.448611,
  'EGP': 16.139691,
  'ERN': 14.999786,
  'ETB': 29.584601,
  'EUR': 0.895456,
  'FJD': 2.17775,
  'FKP': 0.773036,
  'GBP': 0.773036,
  'GEL': 2.955,
  'GGP': 0.773036,
  'GHS': 5.492364,
  'GIP': 0.773036,
  'GMD': 51.2,
  'GNF': 9187.999431,
  'GTQ': 7.711463,
  'GYD': 208.729203,
  'HKD': 7.83625,
  'HNL': 24.657571,
  'HRK': 6.674932,
  'HTG': 97.315244,
  'HUF': 293.72,
  'IDR': 13989.3,
  'ILS': 3.5251,
  'IMP': 0.773036,
  'INR': 70.522108,
  'IQD': 1189.982382,
  'IRR': 42152.890176,
  'ISK': 123.430007,
  'JEP': 0.773036,
  'JMD': 138.563607,
  'JOD': 0.7085,
  'JPY': 108.18500741,
  'KES': 103.25,
  'KGS': 69.651252,
  'KHR': 4070.414306,
  'KMF': 441.949682,
  'KPW': 900,
  'KRW': 1164.69997,
  'KWD': 0.303332,
  'KYD': 0.833393,
  'KZT': 389.714902,
  'LAK': 8839.510647,
  'LBP': 1511.973924,
  'LKR': 181.167512,
  'LRD': 211.599966,
  'LSL': 15.115906,
  'LYD': 1.40118,
  'MAD': 9.613342,
  'MDL': 17.397445,
  'MGA': 3680.265781,
  'MKD': 55.10573,
  'MMK': 1521.988029,
  'MNT': 2681.360024,
  'MOP': 8.072269,
  'MRU': 37.196628,
  'MUR': 36.229999,
  'MVR': 15.45,
  'MWK': 733.789296,
  'MXN': 19.1105,
  'MYR': 4.1655,
  'MZN': 62.875,
  'NAD': 15.115906,
  'NGN': 362,
  'NIO': 34.044783,
  'NOK': 9.0924,
  'NPR': 113.230544,
  'NZD': 1.555694,
  'OMR': 0.384776,
  'PAB': 1.0,
  'PEN': 3.344957,
  'PGK': 3.40421,
  'PHP': 50.487585,
  'PKR': 154.962204,
  'PLN': 3.80865,
  'PYG': 6440.912075,
  'QAR': 3.640952,
  'RON': 4.2576,
  'RSD': 105.138941,
  'RUB': 63.5391,
  'RWF': 917.719639,
  'SAR': 3.750101,
  'SBD': 8.254337,
  'SCR': 13.736072,
  'SDG': 45.109781,
  'SEK': 9.6804,
  'SGD': 1.3578,
  'SHP': 0.773036,
  'SLL': 7438.043346,
  'SOS': 578.4538,
  'SRD': 7.458,
  'SSP': 130.26,
  'STN': 22.05,
  'SVC': 8.750762,
  'SYP': 514.940169,
  'SZL': 15.139698,
  'THB': 30.168793,
  'TJS': 9.689714,
  'TMT': 3.5,
  'TND': 2.8175,
  'TOP': 2.313288,
  'TRY': 5.7124,
  'TTD': 6.746477,
  'TVD': 6.746477,
  'TWD': 30.451,
  'TZS': 2303.2,
  'UAH': 24.81048,
  'UGX': 3709.978911,
  'USD': 1.0,
  'UYU': 37.445964,
  'UZS': 9446.96807,
  'VEF': 248487.642241,
  'VND': 23177.096571,
  'VUV': 115.0155,
  'WST': 2.662945,
  'XAF': 587.380369,
  'XCD': 587.380372,
  'XDR': 587.380373,
  'XOF': 587.380374,
  'XPF': 587.380376,
  'YER': 587.380378,
  'ZAR': 587.380379,
  'ZMW': 587.38038,
  'ZWD': 587.38038,
};
