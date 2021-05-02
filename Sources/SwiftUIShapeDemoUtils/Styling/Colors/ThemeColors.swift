import SwiftUI


public enum ThemeColors {
    
    public enum Theme1 {
        public static let primary = Color("Theme1-Primary", bundle: .module)
        public static let accent = Color("Theme1-Accent", bundle: .module)
        public static let secondary1 = Color("Theme1-Secondary1", bundle: .module)
        public static let secondary2 = Color("Theme1-Secondary2", bundle: .module)
        public static let secondary3 = Color("Theme1-Secondary3", bundle: .module)
        public static let background1 = Color("Theme1-Background1", bundle: .module)
    }
    
    public enum Theme2 {
        public static let primary = Color("Theme2-Primary", bundle: .module)
        public static let accent = Color("Theme2-Accent", bundle: .module)
        public static let secondary1 = Color("Theme2-Secondary1", bundle: .module)
        public static let secondary2 = Color("Theme2-Secondary2", bundle: .module)
        public static let background1 = Color("Theme2-Background1", bundle: .module)
    }
}


#if DEBUG


struct ThemeColors_Previews: PreviewProvider {
    
    static let theme1ColorDictionary: [String: Color] = [
        ".primary": ThemeColors.Theme1.primary,
        ".accent": ThemeColors.Theme1.accent,
        ".secondary1": ThemeColors.Theme1.secondary1,
        ".secondary2": ThemeColors.Theme1.secondary2,
        ".secondary3": ThemeColors.Theme1.secondary3,
        ".background1": ThemeColors.Theme1.background1,
    ]
    
    static let theme2ColorDictionary: [String: Color] = [
        ".primary": ThemeColors.Theme2.primary,
        ".accent": ThemeColors.Theme2.accent,
        ".secondary1": ThemeColors.Theme2.secondary1,
        ".secondary2": ThemeColors.Theme2.secondary2,
        ".background1": ThemeColors.Theme2.background1,
    ]
    
    
    static var colorsListView: some View {
        List {
            Section(header: Text("Theme1")) {
                ForEach(Array(theme1ColorDictionary.keys.sorted()), id: \.self) { colorName in
                    HStack {
                        RoundedRectangle(cornerRadius: 8)
                            .fill(theme1ColorDictionary[colorName]!)
                            .frame(width: 100, height: 100, alignment: .center)

                        Text(colorName)
                            .font(.title2)
                            .foregroundColor(theme1ColorDictionary[colorName]!)
                    }
                }
            }
            
            Section(header: Text("Theme2")) {
                ForEach(Array(theme2ColorDictionary.keys.sorted()), id: \.self) { colorName in
                    HStack {
                        RoundedRectangle(cornerRadius: 8)
                            .fill(theme2ColorDictionary[colorName]!)
                            .frame(width: 100, height: 100, alignment: .center)

                        Text(colorName)
                            .font(.title2)
                            .foregroundColor(theme2ColorDictionary[colorName]!)
                    }
                }
            }
        }
    }
    
    
    
    static var previews: some View {
        Group {
            colorsListView
                .colorScheme(.dark)
            colorsListView
                .colorScheme(.light)
        }
    }
}

#endif
