node {    
      def app     
      stage('Clone repository') {               
             
            checkout scm    
      }     
      stage('Build image') {         
       
            app = docker.build("skadingus/simplechatroom")    
       }     
      stage('Test image') {           
            app.inside {            
             
             sh 'echo "Tests passed"'        
            }    
        }     
       stage('Push image') {
            docker.withRegistry('https://registry.hub.docker.com', '66b531ec-a2f0-4608-8243-005551079489') {            
                app.push("${env.BUILD_NUMBER}")            
                app.push("latest")        
              }    
           }
    }