//
//  WelcomeView.swift
//  CropConnectGrocery
//
//  Created by MAYANK SINGH on 01/11/24.
//


import SwiftUI

struct WelcomeView: View {
    var body: some View {
        NavigationView {
            ZStack {
                VStack(spacing: 0) { 
                    Image("welcome1")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0.59)                          .clipped()
                        .padding(.top, 25)
                        .ignoresSafeArea(edges: .top)

                    Spacer()
                }



                VStack {
                    Spacer()

                    Text("CropConnect.")
                        .font(.customfont(.semibold, fontSize: 37))
                        .foregroundColor(.primaryText)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                        .multilineTextAlignment(.center)

                    Text("Welcome\nto our store")
                        .font(.customfont(.semibold, fontSize: 42))
                        .foregroundColor(.black)
                        .multilineTextAlignment(.center)

                    Text("Get your groceries in as fast as one hour")
                        .font(.customfont(.medium, fontSize: 16))
                        .foregroundColor(.black.opacity(0.7))
                        .multilineTextAlignment(.center)
                        .padding(.bottom, 20)

                    NavigationLink(destination: SignInView()) {
                        Text("Get Started")
                            
                            .font(.customfont(.semibold, fontSize: 18))
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity, minHeight: 60)
                            .background(Color.primaryApp)
                            .cornerRadius(20)
                    }
                    .padding(.horizontal, 20)

                    Spacer().frame(height: 80)
                }
                .padding(.horizontal, 20)
            }
            .navigationTitle("")
            .navigationBarBackButtonHidden(true)
            .navigationBarHidden(true)
        }
    }
}


struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
