vim.g.projectionist_heuristics = {
    artisan = {
        ["*"] = {
            start = "sail up",
            console = "sail tinker",
            make = "npm run dev"
        },
        ["app/Models/*.php"] = {
            type = "model"
        },
        ["database/factories/*Factory.php"] = {
            type = "factory"
        },
        ["app/Http/Controllers/API/*APIController.php"] = {
            type = "controller"
        },
        ["tests/APIs/*ApiTest.php"] = {
            type = "test"
        },
        ["routes/*.php"] = {
            type = "route"
        },
        ["database/migrations/*.php"] = {
            type = "migration"
        },
        ["tests/Unit/*Test.php"] = {
            type = "test",
            alternate = "app/{}.php"
        }
    }
}
