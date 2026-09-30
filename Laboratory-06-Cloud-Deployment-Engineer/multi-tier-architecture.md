# Multi-Tier Architecture

## What is a Two-Tier Architecture?

A Two-Tier Architecture is an application design that divides a system into two separate parts: the application layer and the database layer. Each layer has a different function, but they communicate with each other to make the application work properly.

## The Web/Application Tier

The Web/Application Tier manages the application's functions and provides access to users through a web browser. In this laboratory activity, Nextcloud is used to handle user requests and provide the interface for the private cloud storage system.

## The Database Tier

The Database Tier is responsible for organizing, storing, and retrieving the information required by the application. MariaDB is used in this project to manage the database and keep the information needed by Nextcloud.

## Why Separate Them?

Keeping the application and database in separate containers makes the system more organized and easier to maintain. It also allows each component to be managed independently, making it easier to troubleshoot problems and update individual services without affecting the entire application.
