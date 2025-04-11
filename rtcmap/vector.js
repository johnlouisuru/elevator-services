var simplemaps_countrymap_mapdata={
  main_settings: {
   //General settings
    width: "600", //'700' or 'responsive'
    background_color: "#FFFFFF",
    background_transparent: "yes",
    border_color: "#ffffff",
    
    //State defaults
    state_description: "State description",
    state_color: "#88A4BC",
    state_hover_color: "#3B729F",
    state_url: "",
    border_size: 1.5,
    all_states_inactive: "no",
    all_states_zoomable: "yes",
    
    //Location defaults
    location_description: "Location description",
    location_url: "",
    location_color: "#FF0067",
    location_opacity: 0.8,
    location_hover_opacity: 1,
    location_size: 25,
    location_type: "square",
    location_image_source: "frog.png",
    location_border_color: "#FFFFFF",
    location_border: 2,
    location_hover_border: 2.5,
    all_locations_inactive: "no",
    all_locations_hidden: "no",
    
    //Label defaults
    label_color: "#ffffff",
    label_hover_color: "#ffffff",
    label_size: 16,
    label_font: "Arial",
    label_display: "auto",
    label_scale: "yes",
    hide_labels: "no",
    hide_eastern_labels: "no",
   
    //Zoom settings
    zoom: "yes",
    manual_zoom: "yes",
    back_image: "no",
    initial_back: "no",
    initial_zoom: "-1",
    initial_zoom_solo: "no",
    region_opacity: 1,
    region_hover_opacity: 0.6,
    zoom_out_incrementally: "yes",
    zoom_percentage: 0.99,
    zoom_time: 0.5,
    
    //Popup settings
    popup_color: "white",
    popup_opacity: 0.9,
    popup_shadow: 1,
    popup_corners: 5,
    popup_font: "12px/1.5 Verdana, Arial, Helvetica, sans-serif",
    popup_nocss: "no",
    
    //Advanced settings
    div: "map",
    auto_load: "yes",
    url_new_tab: "no",
    images_directory: "default",
    fade_time: 0.1,
    link_text: "View Website",
    popups: "detect",
    state_image_url: "",
    state_image_position: "",
    location_image_url: ""
  },
  state_specific: {
    PHABR: {
      name: "Abra"
    },
    PHAGN: {
      name: "Butuan"
    },
    PHAGS: {
      name: "Agusan del Sur"
    },
    PHAKL: {
      name: "Aklan"
    },
    PHALB: {
      name: "Albay"
    },
    PHANT: {
      name: "Antique"
    },
    PHAPA: {
      name: "Apayao"
    },
    PHAUR: {
      name: "Aurora",
      color: "#e7b11e",
      description: "RTC AURORA"
    },
    PHBAN: {
      name: "Bataan",
      color: "#e7b11e",
      description: "RTC BATAAN"
    },
    PHBAS: {
      name: "Basilan"
    },
    PHBCD: {
      name: "Bacolod"
    },
    PHBEN: {
      name: "Baguio"
    },
    PHBIL: {
      name: "Biliran"
    },
    PHBOH: {
      name: "Bohol"
    },
    PHBTG: {
      name: "Batangas"
    },
    PHBTN: {
      name: "Batanes"
    },
    PHBUK: {
      name: "Bukidnon"
    },
    PHBUL: {
      name: "Bulacan"
    },
    PHCAG: {
      name: "Cagayan"
    },
    PHCAM: {
      name: "Camiguin"
    },
    PHCAN: {
      name: "Camarines Norte"
    },
    PHCAP: {
      name: "Capiz",
      color: "#e7b11e",
      description: "RTC CAPIZ"
    },
    PHCAS: {
      name: "Naga"
    },
    PHCAT: {
      name: "Catanduanes"
    },
    PHCAV: {
      name: "Cavite"
    },
    PHCEB: {
      name: "Cebu"
    },
    PHCOM: {
      name: "Compostela Valley"
    },
    PHDAO: {
      name: "Davao Oriental"
    },
    PHDAS: {
      name: "Davao del Sur"
    },
    PHDAV: {
      name: "Davao"
    },
    PHEAS: {
      name: "Eastern Samar",
      color: "#e7b11e",
      description: "RTC SAMAR"
    },
    PHGUI: {
      name: "Guimaras"
    },
    PHIFU: {
      name: "Ifugao"
    },
    PHILI: {
      name: "Iloilo"
    },
    PHILN: {
      name: "Ilocos Norte"
    },
    PHILS: {
      name: "Ilocos Sur"
    },
    PHISA: {
      name: "Santiago"
    },
    PHKAL: {
      name: "Kalinga"
    },
    PHLAG: {
      name: "Laguna"
    },
    PHLAN: {
      name: "Lanao del Norte"
    },
    PHLAP: {
      name: "Lapu-Lapu"
    },
    PHLAS: {
      name: "Lanao del Sur"
    },
    PHLEY: {
      name: "Ormoc"
    },
    PHLUN: {
      name: "La Union",
      color: "#e7b11e",
      description: "RTC LA UNION"
    },
    PHMAD: {
      name: "Marinduque"
    },
    PHMAG: {
      name: "Maguindanao"
    },
    PHMAS: {
      name: "Masbate",
      color: "#e7b11e",
      description: "RTC MASBATE"
    },
    PHMDC: {
      name: "Mindoro Occidental"
    },
    PHMDE: {
      name: "Mandaue"
    },
    PHMDR: {
      name: "Mindoro Oriental"
    },
    PHMNL: {
      name: "San Juan"
    },
    PHMOU: {
      name: "Mountain Province"
    },
    PHMSC: {
      name: "Misamis Occidental"
    },
    PHMSR: {
      name: "Cagayan de Oro",
      description: "RTC LAGUINDINGAN",
      color: "#e7b11e"
    },
    PHNCO: {
      name: "Cotabato"
    },
    PHNEC: {
      name: "Negros Occidental"
    },
    PHNER: {
      name: "Negros Oriental"
    },
    PHNSA: {
      name: "Northern Samar"
    },
    PHNUE: {
      name: "Nueva Ecija"
    },
    PHNUV: {
      name: "Nueva Vizcaya"
    },
    PHPAM: {
      name: "Angeles"
    },
    PHPAN: {
      name: "Dagupan"
    },
    PHPLW: {
      name: "Puerto Princesa"
    },
    PHQUE: {
      name: "Lucena"
    },
    PHQUI: {
      name: "Quirino"
    },
    PHRIZ: {
      name: "Rizal"
    },
    PHROM: {
      name: "Romblon"
    },
    PHSAR: {
      name: "Sarangani"
    },
    PHSCO: {
      name: "South Cotabato"
    },
    PHSIG: {
      name: "Siquijor"
    },
    PHSLE: {
      name: "Southern Leyte"
    },
    PHSLU: {
      name: "Sulu"
    },
    PHSOR: {
      name: "Sorsogon"
    },
    PHSUK: {
      name: "Sultan Kudarat"
    },
    PHSUN: {
      name: "Surigao del Norte"
    },
    PHSUR: {
      name: "Surigao del Sur"
    },
    PHTAR: {
      name: "Tarlac"
    },
    PHTAW: {
      name: "Tawi-Tawi"
    },
    PHWSA: {
      name: "Samar"
    },
    PHZAN: {
      name: "Zamboanga",
      color: "#e7b11e",
      description: "RTC ZAMBOANGA"
    },
    PHZAS: {
      name: "Zamboanga del Sur"
    },
    PHZMB: {
      name: "Zambales"
    },
    PHZSI: {
      name: "Zamboanga Sibugay"
    }
  },
  locations: {
    "0": {
      name: "CGD NCR-CL / RTC TAGUIG",
      lat: "14.6042",
      lng: "120.9822",
      description: "PCG-NHQ",
      color: "#facd55"
    }
  },
  labels: {
    PHABR: {
      name: "Abra",
      parent_id: "PHABR"
    },
    PHAGN: {
      name: "Butuan",
      parent_id: "PHAGN"
    },
    PHAGS: {
      name: "Agusan del Sur",
      parent_id: "PHAGS"
    },
    PHAKL: {
      name: "Aklan",
      parent_id: "PHAKL"
    },
    PHALB: {
      name: "Albay",
      parent_id: "PHALB"
    },
    PHANT: {
      name: "Antique",
      parent_id: "PHANT"
    },
    PHAPA: {
      name: "Apayao",
      parent_id: "PHAPA"
    },
    PHAUR: {
      name: "Aurora",
      parent_id: "PHAUR"
    },
    PHBAN: {
      name: "Bataan",
      parent_id: "PHBAN"
    },
    PHBAS: {
      name: "Basilan",
      parent_id: "PHBAS"
    },
    PHBCD: {
      name: "Bacolod",
      parent_id: "PHBCD"
    },
    PHBEN: {
      name: "Baguio",
      parent_id: "PHBEN"
    },
    PHBIL: {
      name: "Biliran",
      parent_id: "PHBIL"
    },
    PHBOH: {
      name: "Bohol",
      parent_id: "PHBOH"
    },
    PHBTG: {
      name: "Batangas",
      parent_id: "PHBTG"
    },
    PHBTN: {
      name: "Batanes",
      parent_id: "PHBTN"
    },
    PHBUK: {
      name: "Bukidnon",
      parent_id: "PHBUK"
    },
    PHBUL: {
      name: "Bulacan",
      parent_id: "PHBUL"
    },
    PHCAG: {
      name: "Cagayan",
      parent_id: "PHCAG"
    },
    PHCAM: {
      name: "Camiguin",
      parent_id: "PHCAM"
    },
    PHCAN: {
      name: "Camarines Norte",
      parent_id: "PHCAN"
    },
    PHCAP: {
      name: "Capiz",
      parent_id: "PHCAP"
    },
    PHCAS: {
      name: "Naga",
      parent_id: "PHCAS"
    },
    PHCAT: {
      name: "Catanduanes",
      parent_id: "PHCAT"
    },
    PHCAV: {
      name: "Cavite",
      parent_id: "PHCAV"
    },
    PHCEB: {
      name: "Cebu",
      parent_id: "PHCEB"
    },
    PHCOM: {
      name: "Compostela Valley",
      parent_id: "PHCOM"
    },
    PHDAO: {
      name: "Davao Oriental",
      parent_id: "PHDAO"
    },
    PHDAS: {
      name: "Davao del Sur",
      parent_id: "PHDAS"
    },
    PHDAV: {
      name: "Davao",
      parent_id: "PHDAV"
    },
    PHEAS: {
      name: "Eastern Samar",
      parent_id: "PHEAS"
    },
    PHGUI: {
      name: "Guimaras",
      parent_id: "PHGUI"
    },
    PHIFU: {
      name: "Ifugao",
      parent_id: "PHIFU"
    },
    PHILI: {
      name: "Iloilo",
      parent_id: "PHILI"
    },
    PHILN: {
      name: "Ilocos Norte",
      parent_id: "PHILN"
    },
    PHILS: {
      name: "Ilocos Sur",
      parent_id: "PHILS"
    },
    PHISA: {
      name: "Santiago",
      parent_id: "PHISA"
    },
    PHKAL: {
      name: "Kalinga",
      parent_id: "PHKAL"
    },
    PHLAG: {
      name: "Laguna",
      parent_id: "PHLAG"
    },
    PHLAN: {
      name: "Lanao del Norte",
      parent_id: "PHLAN"
    },
    PHLAP: {
      name: "Lapu-Lapu",
      parent_id: "PHLAP"
    },
    PHLAS: {
      name: "Lanao del Sur",
      parent_id: "PHLAS"
    },
    PHLEY: {
      name: "Ormoc",
      parent_id: "PHLEY"
    },
    PHLUN: {
      name: "La Union",
      parent_id: "PHLUN"
    },
    PHMAD: {
      name: "Marinduque",
      parent_id: "PHMAD"
    },
    PHMAG: {
      name: "Maguindanao",
      parent_id: "PHMAG"
    },
    PHMAS: {
      name: "Masbate",
      parent_id: "PHMAS"
    },
    PHMDC: {
      name: "Mindoro Occidental",
      parent_id: "PHMDC"
    },
    PHMDE: {
      name: "Mandaue",
      parent_id: "PHMDE"
    },
    PHMDR: {
      name: "Mindoro Oriental",
      parent_id: "PHMDR"
    },
    PHMNL: {
      name: "San Juan",
      parent_id: "PHMNL"
    },
    PHMOU: {
      name: "Mountain Province",
      parent_id: "PHMOU"
    },
    PHMSC: {
      name: "Misamis Occidental",
      parent_id: "PHMSC"
    },
    PHMSR: {
      name: "Cagayan de Oro",
      parent_id: "PHMSR"
    },
    PHNCO: {
      name: "Cotabato",
      parent_id: "PHNCO"
    },
    PHNEC: {
      name: "Negros Occidental",
      parent_id: "PHNEC"
    },
    PHNER: {
      name: "Negros Oriental",
      parent_id: "PHNER"
    },
    PHNSA: {
      name: "Northern Samar",
      parent_id: "PHNSA"
    },
    PHNUE: {
      name: "Nueva Ecija",
      parent_id: "PHNUE"
    },
    PHNUV: {
      name: "Nueva Vizcaya",
      parent_id: "PHNUV"
    },
    PHPAM: {
      name: "Angeles",
      parent_id: "PHPAM"
    },
    PHPAN: {
      name: "Dagupan",
      parent_id: "PHPAN"
    },
    PHPLW: {
      name: "Puerto Princesa",
      parent_id: "PHPLW"
    },
    PHQUE: {
      name: "Lucena",
      parent_id: "PHQUE"
    },
    PHQUI: {
      name: "Quirino",
      parent_id: "PHQUI"
    },
    PHRIZ: {
      name: "Rizal",
      parent_id: "PHRIZ"
    },
    PHROM: {
      name: "Romblon",
      parent_id: "PHROM"
    },
    PHSAR: {
      name: "Sarangani",
      parent_id: "PHSAR"
    },
    PHSCO: {
      name: "South Cotabato",
      parent_id: "PHSCO"
    },
    PHSIG: {
      name: "Siquijor",
      parent_id: "PHSIG"
    },
    PHSLE: {
      name: "Southern Leyte",
      parent_id: "PHSLE"
    },
    PHSLU: {
      name: "Sulu",
      parent_id: "PHSLU"
    },
    PHSOR: {
      name: "Sorsogon",
      parent_id: "PHSOR"
    },
    PHSUK: {
      name: "Sultan Kudarat",
      parent_id: "PHSUK"
    },
    PHSUN: {
      name: "Surigao del Norte",
      parent_id: "PHSUN"
    },
    PHSUR: {
      name: "Surigao del Sur",
      parent_id: "PHSUR"
    },
    PHTAR: {
      name: "Tarlac",
      parent_id: "PHTAR"
    },
    PHTAW: {
      name: "Tawi-Tawi",
      parent_id: "PHTAW"
    },
    PHWSA: {
      name: "Samar",
      parent_id: "PHWSA"
    },
    PHZAN: {
      name: "Zamboanga",
      parent_id: "PHZAN"
    },
    PHZAS: {
      name: "Zamboanga del Sur",
      parent_id: "PHZAS"
    },
    PHZMB: {
      name: "Zambales",
      parent_id: "PHZMB"
    },
    PHZSI: {
      name: "Zamboanga Sibugay",
      parent_id: "PHZSI"
    }
  },
  legend: {
    entries: []
  },
  regions: {}
};