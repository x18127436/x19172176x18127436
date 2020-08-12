ActionMailer::Base.smtp_settings = {
    address: "smtp.gmail.com",
    port: "587",
    domain:"smtp.gmail.com",
    user_name: "eddierubyrails",
    password: "Password!23",
    authentication: "plain",
    enable_starttls_auto: true
}