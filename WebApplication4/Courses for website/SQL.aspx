<%@ Page Title="" Language="C#" MasterPageFile="~/Hmoe/home.Master" AutoEventWireup="true" CodeBehind="SQL.aspx.cs" Inherits="WebApplication4.Courses_for_website.SQL" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="sql.css" rel="stylesheet" />
    <link href="../css%20coure/StyleSheet1.css" rel="stylesheet" />

    <script>
        function showDetail(course) {
            const courseDetails = {
                html: {
                    title: "HTML Course",
                    content: "HTML (HyperText Markup Language) is the standard markup language for documents designed to be displayed in a web browser."
                },
                css: {
                    title: "CSS Course",
                    content: "CSS (Cascading Style Sheets) describes the presentation of a document written in HTML or XML."
                },
                    title: "SQL Course",                sql: {

                    content: "SQL (Structured Query Language) is the standard language for managing and manipulating databases."
                },
            
            };

            document.getElementById("detailTitle").innerText = courseDetails[course].title;
            document.getElementById("detailContent").innerText = courseDetails[course].content;
        }

        function showSQLDetail(section) {
            const details = {
                intro: {
                    title: "1. Introduction to SQL",
                    content: "SQL (Structured Query Language) is the standard language for managing and manipulating databases."

                },
                dbConcepts: {
                    title: "2. Database Concepts",
                    content: "Database Management Systems (DBMS) provide an interface for interacting with databases."
                },
                sqlBasics: {
                    title: "3. SQL Basics",
                    content: "The SELECT statement retrieves data from databases."
                },
            };

            document.getElementById("detailTitle").innerText = details[section].title;
            document.getElementById("detailContent").innerText = details[section].content;
        }
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Navigation Bar -->
    <div id="navbar">
        <ul>
            <li><a href="#" onclick="showDetail('html')">HTML</a></li>
            <li><a href="#" onclick="showDetail('css')">CSS</a></li>
            <li><a href="SQL.aspx" onclick="showDetail('sql')">SQL</a></li>
        </ul>
    </div>

    <!-- Main Courses Container -->
    <div id="container">
        <div id="sidebar">
            <h2>SQL Course Outline</h2>
            <ul>
                <li><a href="#" onclick="showSQLDetail('intro')">1. Introduction to SQL</a></li>
                <li><a href="#" onclick="showSQLDetail('dbConcepts')">2. Database Concepts</a></li>
                <li><a href="#" onclick="showSQLDetail('sqlBasics')">3. SQL Basics</a></li>
               <li><a href="#" onclick="showDetail('advQueries')">4. Advanced SQL Queries</a></li>
            <li><a href="#" onclick="showDetail('dataManipulation')">5. Data Manipulation</a></li>
            <li><a href="#" onclick="showDetail('dbDesign')">6. Database Design</a></li>
            <li><a href="#" onclick="showDetail('indexing')">7. Indexing</a></li>
            <li><a href="#" onclick="showDetail('transactions')">8. Transactions and Concurrency</a></li>
            <li><a href="#" onclick="showDetail('storedProcedures')">9. Stored Procedures and Functions</a></li>
            <li><a href="#" onclick="showDetail('security')">10. Security in SQL</a></li>
            <li><a href="#" onclick="showDetail('advTopics')">11. Advanced SQL Topics</a></li>
            <li><a href="#" onclick="showDetail('inPractice')">12. SQL in Practice</a></li>
        </ul>
        </div>

        <div id="content">
            <h3 id="detailTitle">Welcome to the SQL Course</h3>
            <p id="detailContent">Click on the headings on the left to learn more about SQL.</p>
        </div>
    </div>
</asp:Content>

