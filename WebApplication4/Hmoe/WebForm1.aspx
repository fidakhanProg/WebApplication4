<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication4.Hmoe.WebForm1" %>



<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <title>BawdicSoft - Software Services and Development</title>
    <link href="StyleSheet1.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <header>
            <div class="container">
                <h1>Fida Khan</h1>
                <nav>
                    <ul>
                        <li><a href="#home">Home</a></li>
                        <li><a href="#services">Services</a></li>
                        <li><a href="#portfolio">Portfolio</a></li>
                        <li><a href="#about">About Us</a></li>
                        <li><a href="#careers">Careers</a></li>
                        <li><a href="#contact">Contact Us</a></li>
                    </ul>
                </nav>
            </div>
        </header>
        
        <section id="home">
            <div class="container">
                <h2>Developing the Future Today</h2>
                <p>Our team of expert developers can quickly deliver innovative web application and Web3 development solutions with improved security and optimized performance.</p>
                <p>We offer Innovation, Optimization, Automation, and enhanced Security...</p>
            </div>
        </section>

        <section id="about">
            <div class="container">
                <h2>About Us</h2>
                <p>BawdicSoft is a web application development and Web3 solutions provider founded in 2018. We present all the latest technologies such as Web3.0, Web development, Software Development, Web application, E-Commerce & Web store development, Decentralised exchanges, NFT Market development, Artificial Intelligence, and AR/VR all under one umbrella. We aim to provide full-stack digital solutions to our customers integrating state-of-the-art technologies and emerging ideas into their business.</p>
            </div>
        </section>

        <section id="services">
            <div class="container">
                <h2>Our Expertise</h2>
                <h3>Web Application Development</h3>
                <p>We specialize in creating responsive UI and UX design using React, Vue, and Next JS...</p>
                <h3>Blockchain / Web3 Development</h3>
                <p>BawdicSoft modernizes your business using emerging Blockchain / web3 technology...</p>
            </div>
        </section>

        <section id="portfolio">
            <div class="container">
                <h2>Portfolio</h2>
                <p>Showcase of our projects and client work...</p>
            </div>
        </section>

        <section id="contact">
            <div class="container">
                <h2>Contact Us</h2>
                <form>
                    <input type="text" placeholder="Your Name" required />
                    <input type="email" placeholder="Your Email" required />
                    <textarea placeholder="Your Message" required></textarea>
                    <button type="submit">Send</button>
                </form>
            </div>
        </section>

        <footer>
            <div class="container">
                <p>&copy; 2024 Fida Khan - Dot net and Data Anylist</p>
            </div>
        </footer>
    </form>
</body>
</html>

