//
//  ContentView.swift
//  VertexTrade Pro - iOS App
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    let webView: WKWebView
    
    func makeUIView(context: Context) -> WKWebView {
        return webView
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {}
}

class WebViewStateModel: ObservableObject {
    @Published var pageTitle: String = "VertexTrade Pro"
    @Published var loading: Bool = false
    @Published var canGoBack: Bool = false
    @Published var goBack: Bool = false
}

struct ContentView: View {
    @StateObject var model = WebViewStateModel()
    @State var webView = WKWebView()
    
    var body: some View {
        NavigationView {
            ZStack {
                WebView(webView: webView)
                    .onAppear {
                        setupWebView()
                    }
                
                if model.loading {
                    VStack {
                        ProgressView()
                            .scaleEffect(1.5)
                            .progressViewStyle(CircularProgressViewStyle(tint: Color.green))
                        Text("Loading...")
                            .foregroundColor(.white)
                            .padding(.top, 10)
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.black.opacity(0.8))
                }
            }
            .navigationBarHidden(true)
            .statusBar(hidden: true)
            .preferredColorScheme(.dark)
            .onChange(of: model.goBack) { value in
                if value {
                    webView.goBack()
                    model.goBack = false
                }
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
    
    func setupWebView() {
        webView.navigationDelegate = makeCoordinator()
        webView.backgroundColor = UIColor.black
        webView.isOpaque = false
        webView.scrollView.bounces = false
        
        // Load local HTML
        if let url = Bundle.main.url(forResource: "index", withExtension: "html", subdirectory: "www") {
            webView.loadFileURL(url, allowingReadAccessTo: url.deletingLastPathComponent())
        }
        
        // Enable local storage
        webView.configuration.websiteDataStore = WKWebsiteDataStore.default()
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    class Coordinator: NSObject, WKNavigationDelegate {
        var parent: ContentView
        
        init(_ parent: ContentView) {
            self.parent = parent
        }
        
        func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
            parent.model.loading = true
        }
        
        func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
            parent.model.loading = false
            parent.model.canGoBack = webView.canGoBack
            if let title = webView.title {
                parent.model.pageTitle = title
            }
        }
        
        func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
            parent.model.loading = false
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
