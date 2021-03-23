import SwiftUI


public enum ThemeColors {
    
    public enum Theme1 {
        public static let primaryAccent = Color("Theme1-PrimaryAccent", bundle: .module)
        public static let secondaryAccent1 = Color("Theme1-SecondaryAccent1", bundle: .module)
        public static let secondaryAccent2 = Color("Theme1-SecondaryAccent2", bundle: .module)
        public static let secondaryAccent3 = Color("Theme1-SecondaryAccent3", bundle: .module)
        public static let secondaryAccent4 = Color("Theme1-SecondaryAccent4", bundle: .module)
    }
    
    public enum Theme2 {
        public static let primaryAccent = Color("Theme2-PrimaryAccent", bundle: .module)
        public static let secondaryAccent1 = Color("Theme2-SecondaryAccent1", bundle: .module)
        public static let secondaryAccent2 = Color("Theme2-SecondaryAccent2", bundle: .module)
        public static let secondaryAccent3 = Color("Theme2-SecondaryAccent3", bundle: .module)
        public static let background1 = Color("Theme2-Background1", bundle: .module)
    }
}


#if DEBUG

struct ThemeColors_Previews: PreviewProvider {
    static let theme1Colors: [Color] = [
        ThemeColors.Theme1.primaryAccent,
        ThemeColors.Theme1.secondaryAccent1,
        ThemeColors.Theme1.secondaryAccent2,
        ThemeColors.Theme1.secondaryAccent3,
        ThemeColors.Theme1.secondaryAccent4,
    ]
    
    static let theme2Colors: [Color] = [
        ThemeColors.Theme2.primaryAccent,
        ThemeColors.Theme2.secondaryAccent1,
        ThemeColors.Theme2.secondaryAccent2,
        ThemeColors.Theme2.secondaryAccent3,
        ThemeColors.Theme2.background1,
    ]
    
    
    static var previews: some View {
        List {
            Section(header: Text("Theme1")) {
                ForEach(theme1Colors, id: \.self) { color in
                    RoundedRectangle(cornerRadius: 8)
                        .fill(color)
                        .frame(width: 100, height: 100, alignment: .center)
                }
            }
            
            Section(header: Text("Theme2")) {
                ForEach(theme2Colors, id: \.self) { color in
                    RoundedRectangle(cornerRadius: 8)
                        .fill(color)
                        .frame(width: 100, height: 100, alignment: .center)
                }
            }
        }
    }
}

#endif
