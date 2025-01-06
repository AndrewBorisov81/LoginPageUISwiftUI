import SwiftUI

struct Login: View {
    var body: some View {
       
        // gettin screen frame...
        var screen = NSScreen.main?.visibleFrame
        
        // Email and password TextField...
        @State var email = ""
        @State var password = ""
        @State var keepLogged = false
        
        // Alert ...
        @State var alert = false
        
        
        HStack(spacing: 0) {
            
            VStack {
                //Spacer(minLength: 0)
                
                Text("Welcom Back")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(.black)
                    .frame(width: 200, height: 100) // Fixed size
                    .padding(.vertical, 10)
                
                // Google Login....
                Button (action: {}, label: {
                    HStack {
                        
                        Image("google")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 25, height: 25)
                        
                        Spacer(minLength: 0)
                        
                        Text("Log in with the google")
                            .foregroundColor(.black)
                        
                        Spacer()
                            
                    }
                    .padding(.vertical, 8)
                    .padding(.horizontal)
                    .background(Color.white)
                    .shadow(color: Color.black.opacity(0.1), radius: 5, x : 5, y: 5)
                    .shadow(color: Color.black.opacity(0.1), radius: 5, x : -5, y: -5)
                })
                .buttonStyle(PlainButtonStyle())
                .padding(.horizontal, 50)
                .padding(.top)
                
                HStack {
                    Rectangle()
                        .fill(Color.gray.opacity(0.5))
                        .frame(height: 1)
                    
                    Text("OR")
                        .foregroundColor(.gray)
                    
                    Rectangle()
                        .fill(Color.gray.opacity(0.5))
                        .frame(height: 1)
                        
                }
                .padding(.horizontal, 50)
                .padding(.vertical, 20)
                
                // Email ...
                    
                TextField("Email", text: $email)
                    .textFieldStyle(PlainTextFieldStyle())
                    .padding(.vertical, 10)
                    .padding(.horizontal)
                // Borders..
                    .background(RoundedRectangle(cornerRadius: 2).stroke(Color.gray.opacity(0.7), lineWidth: 1))
                    .padding(.horizontal, 50)
                    
                SecureField("Password", text: $email)
                    .textFieldStyle(PlainTextFieldStyle())
                    .padding(.vertical, 10)
                    .padding(.horizontal)
                // Borders..
                    .background(RoundedRectangle(cornerRadius: 2).stroke(Color.gray.opacity(0.7), lineWidth: 1))
                    .padding(.top)
                    .padding(.horizontal, 50)
                    
                // Keep Login and foget password
                HStack {
                    Toggle("", isOn: $keepLogged)
                        .labelsHidden()
                        .toggleStyle(CheckboxToggleStyle())
                        
                    Text("Keep Logged In")
                        .foregroundColor(.black)
                        
                    Button(action: {}, label: {
                        Text("Forget Password")
                            .foregroundStyle(.black)
                        // Under Line
                            .underline(true, color: .black)
                    })
                        .buttonStyle(PlainButtonStyle())
                        
                }
                    .padding(.horizontal, 50)
                    
                // Login Button ...
                    
                Button(action: {alert.toggle()}, label: {
                    HStack{
                        Spacer()
                            
                        Text("Login")
                            
                        Spacer()
                            
                        Image(systemName: "arrow.right")
                    }
                        .foregroundColor(.white)
                        .padding(.vertical, 10)
                        .padding(.horizontal)
                        .background(Color.blue)
                        .cornerRadius(2)
                })
                    .buttonStyle(PlainButtonStyle())
                    .padding(.top)
                    .padding(.horizontal, 50)
                    
                // Sign up button ...
                HStack{
                    Text("Don't have account yet?")
                        .foregroundColor(.gray)
                        
                    Button(action: {}, label: {
                        Text("Sign Up")
                            .foregroundColor(.blue)
                            .underline(true, color: Color.black)
                    })
                    .buttonStyle(PlainButtonStyle())
                }
                .padding(.top, 10)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.white)
            
            VStack() {
                
                Spacer()
                
                //  Welcom image ...
                Image("welcom")
                    .resizable()
                    .opacity(0.7)
                    .aspectRatio(contentMode: .fit)
                
                Spacer()
            }
            // .half of the width
            .frame(width: (screen!.width / 1.8) / 2)
            .background(.white)
        }
        .ignoresSafeArea(.all, edges: .all)
        .frame(width: screen!.width / 1.8, height: screen!.height - 100)
        .alert(isPresented: $alert, content: {
            Alert(
                title: Text("Message"),
                message: Text("Logged Successfully"),
                dismissButton: .destructive(Text("Ok"))
            )
        })
    }
}

#Preview {
    Login()
}
