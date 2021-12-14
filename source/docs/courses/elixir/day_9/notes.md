# Class 09: Introduction to elixir phoenix framework

Notes from the couse class 9

### Steps to create a rest API

1. Firts we need install the tool that we will use to create a proyect 
    ```console
    mix archive.install hex phx_new
    ```
2. To create a new proyect run command bellow
    ```console
     mix phx.new phoenix_101_bunsan
    ```
3. Next, run command to create database and another elixir modules neccesaries
    ```command
    mix ecto.create
    ```
4. Run proyect with
    ```command
    iex -S mix phx.server
    ```

5. In a navigator open URI bellow to show the content of css script 

    [http://localhost:4000/assets/app.css](http://localhost:4000/assets/app.css)

### Elixir phoenix generators

We can use generators in elixir to create elixir modules and entities in database

1. Fist run the next command to create the neccesary modules and database entities for an API to a manage PETS

    ```command
    mix phx.gen.json Pets Pet pets name:string age:integer type:string size:string
    ```

2. Next, run command bellow 
    ```command 
    mix ecto.migrate
    ```
3. Finish, run the server
    ```command
    iex -S mix phx.server
    ```

4. Open the next URI
    [http://localhost:4000/api/pets](http://localhost:4000/api/pets)

### Persisting PETS in database

Using the Modules and functions created in last session we can persist new pets in the database using next commands

1. Run next commands to define aliases to help us in use the functions in a easy way
    ```command
    alias Phoenix101Bunsan.Pets
    alias Phoenix101Bunsan.Pets.Pet
    ```

2. Now, to create a new PET only run the next little command bellow
    ```command
    Pets.create_pet(%{name: "Garfield", age: 1, type: "cat", size: "1"})
    ```

3. Then, run the proyect 
    ```command
    iex -S mix phx.server
    ```

4. Finish, check in navigator the next URI 
    [http://localhost:4000/api/pets](http://localhost:4000/api/pets)

