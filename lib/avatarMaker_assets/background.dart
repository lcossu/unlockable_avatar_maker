/// SVG strings for style of avatar
class AvatarMakerBackground {
  static Map<String, dynamic> bgColor = {
    "Transparent": "",
    "Black": "#262E33",
    "Blue01": "#65C9FF",
    "Blue02": "#5199E4",
    "Blue03": "#25557C",
    "Gray01": "#E6E6E6",
    "Gray02": "#929598",
    "Heather": "#3C4F5C",
    "PastelBlue": "#B1E2FF",
    "PastelGreen": "#A7FFC4",
    "PastelOrange": "#FFDEB5",
    "PastelRed": "#FFAFB9",
    "PastelYellow": "#FFFFB1",
    "Pink": "#FF488E",
    "Red": "#FF5C5C",
    "White": "#FFFFFF",
  };
  static String generateBackground({String backgroundColor = "Black"}) {
    String? colorHex = bgColor[backgroundColor];
    if (colorHex == '')
      return "";
    else {
      return '''
        <g id="Circle" stroke-width="1" fill-rule="evenodd" transform="translate(12.000000, 40.000000)" class="__WebInspectorHideElement__">
          <mask id="react-mask-4" fill="white">
            <use xlink:href="#react-path-1"/>
          </mask>
          <use id="Circle-Background" fill="#E6E6E6" xlink:href="#react-path-1"/>
          <g id="Color/Palette/Blue-01" mask="url(#react-mask-4)" fill="${colorHex}">
            <rect id="🖍Color" x="0" y="0" width="240" height="240"/>
          </g>
        </g>
        <mask id="react-mask-5" fill="white" class="">
          <use xlink:href="#react-path-2"/>
        </mask>
        ''';
    }
  }
}
// const avatarMakerStyle = {
//   "Transparent": "",
//   "Circle": '''
//         <g id="Circle" stroke-width="1" fill-rule="evenodd" transform="translate(12.000000, 40.000000)" class="__WebInspectorHideElement__">
//           <mask id="react-mask-4" fill="white">
//             <use xlink:href="#react-path-1"/>
//           </mask>
//           <use id="Circle-Background" fill="#E6E6E6" xlink:href="#react-path-1"/>
//           <g id="Color/Palette/Blue-01" mask="url(#react-mask-4)" fill="#65C9FF">
//             <rect id="🖍Color" x="0" y="0" width="240" height="240"/>
//           </g>
//         </g>
//         <mask id="react-mask-5" fill="white" class="">
//           <use xlink:href="#react-path-2"/>
//         </mask>
//         '''
// };
