CKEDITOR.plugins.add('placeholderDropdown',
    {
        requires: ['richcombo'], //, 'styles' ],
        init: function (editor) {
            var config = editor.config,
                lang = editor.lang.format;

            // Gets the list of tags from the settings.
            var tags = []; //new Array();
            //this.add('value', 'drop_text', 'drop_label');
            tags[0] = ["[ORGUNITCODE]", "orgUnitCode", "orgUnitCode"];
            tags[1] = ["[ORGUNITTYPE]", "orgUnitType", "orgUnitType"];
            tags[2] = ["[ORGUNITNAME1]", "orgUnitName1", "orgUnitName1"];
            tags[3] = ["[ORGUNITNAME2]", "orgUnitName2", "orgUnitName2"];
            tags[4] = ["[ORGUNITSTREET]", "orgUnitStreet", "orgUnitStreet"];
            tags[5] = ["[ORGUNITCITY]", "orgUnitCity", "orgUnitCity"];
            tags[6] = ["[EMPLOYEECODE]", "employeeCode", "employeeCode"];
            tags[7] = ["[EMPLOYEETYPE]", "employeeType", "employeeType"];
            tags[8] = ["[EMPLOYEENAME1]", "employeeName1", "employeeName1"];
            tags[9] = ["[EMPLOYEENAME2]", "employeeName2", "employeeName2"];
            tags[10] = ["[ORGUNITID]", "orgUnitId", "orgUnitId"];
            tags[11] = ["[CUSTOMERCODE]", "customerCode", "customerCode"];
            tags[12] = ["[CUSTOMERORDERNO]", "customerorderNo", "customerorderNo"];
            tags[13] = ["[CUSTOMERLANG]", "customerLang", "customerLang"];
            tags[14] = ["[CUSTOMERBIRTHDATE]", "customerbirthdate", "customerbirthdate"];
            tags[15] = ["[CUSTOMERTYPE]", "customerType", "customerType"];
            tags[16] = ["[USAGETYPE]", "usageType", "usageType"];
            tags[17] = ["[SALESTYPE]", "salesType", "salesType"];
            tags[18] = ["[CUSTOMERCATEGORY]", "customercategory", "customercategory"];
            tags[19] = ["[CUSTOMERSTATUS]", "customerstatus", "customerstatus"];
            tags[20] = ["[CUSTOMERNAME1]", "customerName1", "customerName1"];
            tags[21] = ["[CUSTOMERNAME2]", "customerName2", "customerName2"];
            tags[22] = ["[CUSTOMERNAME3]", "customerName3", "customerName3"];
            tags[23] = ["[CUSTOMERNAME4]", "customerName4", "customerName4"];
            tags[24] = ["[CUSTOMERTITLE]", "customerTitle", "customerTitle"];
            tags[25] = ["[CUSTOMEROCCUPATION]", "customerOccupation", "customerOccupation"];
            tags[26] = ["[CUSTOMERGENDER]", "customerGender", "customerGender"];
            tags[27] = ["[CUSTOMERSALUTATION]", "customerSalutation", "customerSalutation"];
            tags[28] = ["[CUSTOMERDESCRIPTION]", "customerDescription", "customerDescription"];
            tags[29] = ["[CUSTOMERREMARK]", "customerRemark", "customerRemark"];
            tags[30] = ["[PREFERREDCHANNEL]", "preferredChannel", "preferredChannel"];
            tags[31] = ["[ADDRESSPOSTAL1]", "addressPostal1", "addressPostal1"];
            tags[32] = ["[ADDRESSPOSTAL2]", "addressPostal2", "addressPostal2"];
            tags[33] = ["[ADDRESSPOSTAL3]", "addressPostal3", "addressPostal3"];
            tags[34] = ["[ADDRESSPOSTAL4]", "addressPostal4", "addressPostal4"];
            tags[35] = ["[ADDRESSPOSTAL5]", "addressPostal5", "addressPostal5"];
            tags[36] = ["[POSTALCOUNTRY]", "postalCountry", "postalCountry"];
            tags[37] = ["[ADDRESSBUSINESSNAME1]", "addressBusinessName1", "addressBusinessName1"];
            tags[38] = ["[ADDRESSBUSINESSNAME2]", "addressBusinessName2", "addressBusinessName2"];
            tags[39] = ["[ADDRESSBUSINESS1]", "addressBusiness1", "addressBusiness1"];
            tags[40] = ["[ADDRESSBUSINESS2]", "addressBusiness2", "addressBusiness2"];
            tags[41] = ["[ADDRESSBUSINESS3]", "addressBusiness3", "addressBusiness3"];
            tags[42] = ["[ADDRESSBUSINESS4]", "addressBusiness4", "addressBusiness4"];
            tags[43] = ["[ADDRESSBUSINESS5]", "addressBusiness5", "addressBusiness5"];
            tags[44] = ["[ADDRESSBUSINESSCOUNTRY]", "addressBusinessCountry", "addressBusinessCountry"];
            tags[45] = ["[PHONE1]", "phone1", "phone1"];
            tags[46] = ["[PHONE2]", "phone2", "phone2"];
            tags[47] = ["[PHONE4]", "phone4", "phone4"];
            tags[47] = ["[PREFERREDPHONE]", "preferredPhone", "preferredPhone"];
            tags[49] = ["[EMAILTYPE1]", "emailType1", "emailType1"];
            tags[50] = ["[EMAILTYPE2]", "emailType2", "emailType2"];
            tags[51] = ["[PREFERREDEMAIL]", "preferredEmail", "preferredEmail"];
            tags[52] = ["[PRODUCTIDENT]", "productIdent", "productIdent"];
            tags[53] = ["[PRODUCTVIN]", "productVIN", "productVIN"];
            tags[54] = ["[PRODUCTDATE]", "productDate", "productDate"];
            tags[55] = ["[EVENTDATE]", "eventDate", "eventDate"];
            tags[56] = ["[PRODUCTNAME]", "productName", "productName"];
            tags[57] = ["[PRODUCTINFO1]", "productInfo1", "productInfo1"];
            tags[58] = ["[PRODUCTINFO2]", "productInfo2", "productInfo2"];
            tags[59] = ["[PRODUCTBRAND]", "productBrand", "productBrand"];
            tags[60] = ["[PRODUCTREMARK]", "productRemark", "productRemark"];
            tags[61] = ["[EVENTCODE]", "eventCode", "eventCode"];
            tags[62] = ["[EVENTTYPE]", "eventType", "eventType"];
            tags[63] = ["[REPAIRCOSTS]", "repairCosts", "repairCosts"];
            tags[64] = ["[REPAIRTYPE]", "repairType", "repairType"];
            tags[65] = ["<img border='0' id='m_1673088117016356790_x0000_i1027' src='https://ci4.googleusercontent.com/proxy/oYsALwO2pLIMthYQaYOCPTfzq-L3YpZ8gRPW41je-VpxMzAEo1v-HgPuOgYVxPJMUJ4ldFhIO-1MbqRgDM95CtIJGGv3K0wQvoJUc7IM=s0-d-e1-ft#http://www.elabs6.com/content/12346940/infiniti/star.jpg' class='CToWUd __web-inspector-hide-shortcut__'>", "image", "image"];

            // Create style objects for all defined styles.

            editor.ui.addRichCombo('tokens',
                {
                    label: "Select placeholder",
                    title: "Select placeholder",
                    voiceLabel: "v",
                    className: 'cke_format',
                    multiSelect: false,

                    panel:
                    {
                        css: [config.contentsCss, CKEDITOR.getUrl(editor.skinPath + 'editor.css')],
                        voiceLabel: lang.panelVoiceLabel
                    },

                    init: function () {
                        this.startGroup("");
                        //this.add('value', 'drop_text', 'drop_label');
                        for (var this_tag in tags) {
                            this.add(tags[this_tag][0], tags[this_tag][1], tags[this_tag][2],
                                tags[this_tag][3], tags[this_tag][4], tags[this_tag][5],
                                tags[this_tag][6], tags[this_tag][7], tags[this_tag][8],
                                tags[this_tag][9], tags[this_tag][10], tags[this_tag][11],
                                tags[this_tag][12], tags[this_tag][13], tags[this_tag][14],
                                tags[this_tag][15], tags[this_tag][16], tags[this_tag][17],
                                tags[this_tag][18], tags[this_tag][19], tags[this_tag][20],
                                tags[this_tag][21], tags[this_tag][22], tags[this_tag][23],
                                tags[this_tag][24], tags[this_tag][25], tags[this_tag][26],
                                tags[this_tag][27], tags[this_tag][28], tags[this_tag][29],
                                tags[this_tag][30], tags[this_tag][31], tags[this_tag][32],
                                tags[this_tag][33], tags[this_tag][34], tags[this_tag][35],
                                tags[this_tag][36], tags[this_tag][37], tags[this_tag][38],
                                tags[this_tag][39], tags[this_tag][39], tags[this_tag][40],
                                tags[this_tag][42], tags[this_tag][43], tags[this_tag][44],
                                tags[this_tag][45], tags[this_tag][46], tags[this_tag][47],
                                tags[this_tag][48], tags[this_tag][49], tags[this_tag][50],
                                tags[this_tag][51], tags[this_tag][52], tags[this_tag][53],
                                tags[this_tag][54], tags[this_tag][55], tags[this_tag][57],
                                tags[this_tag][57], tags[this_tag][58], tags[this_tag][59],
                                tags[this_tag][60], tags[this_tag][61], tags[this_tag][62],
                                tags[this_tag][63], tags[this_tag][64], tags[this_tag][65]
                            );
                        }
                    },

                    onClick: function (value) {
                        editor.focus();
                        editor.fire('saveSnapshot');
                        editor.insertHtml(value);
                        editor.fire('saveSnapshot');
                    }
                });
        }
    });