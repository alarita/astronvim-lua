return {
  "alarita/vim-mocha-fork",
  event = "VeryLazy",
  config = function()
    -- vim.g.mocha_js_command = ":vsplit term://node bundle-tests.js --entrypath={entry} && yarn mocha --timeout 5000 --enable-source-maps --require=test/setup.js test-bundles/{spec}"
    -- vim.g.mocha_js_command = ":vsplit term://node bundle-tests.js --entrypath={entry} && NODE_PATH=./src/cloud-utils/node_modules npx mocha --timeout 5000 --enable-source-maps --require=src/test/setup.js {spec}"
    -- vim.g.mocha_js_command = ":vsplit term://node bundle-tests.js --entrypath={entry} && mkdir -p test-bundles/src && mv src/test-bundles/* test-bundles/src && npx mocha --timeout 5000 --enable-source-maps --require=src/test/setup.js test-bundles/{spec}; rm -rf test-bundles"
    -- vim.g.mocha_ts_command = ":vsplit term://node bundle-tests.js --entrypath={entry} && mkdir -p test-bundles/src && mv src/test-bundles/* test-bundles/src && npx mocha --timeout 5000 --enable-source-maps --require=src/test/setup.js test-bundles/{spec}; rm -rf test-bundles"
    -- vim.g.mocha_js_command = string.gsub(
    --   ":vsplit term://node bundle-tests.js --entrypath={entry} && NODE_PATH=./src/cloud-utils/node_modules npx mocha --timeout 5000 --enable-source-maps --require=src/test/setup.js {spec}",
    --   "{spec}",
    --   function(spec)
    --     return string.gsub(spec, "src", "src/test-bundles")
    --   end
    -- )

    -- vim.g.mocha_ts_command = string.gsub(
    --   ":vsplit term://node bundle-tests.js --entrypath={entry} && npx mocha --timeout 5000 --enable-source-maps --require=src/test/setup.js {spec}",
    --   "{spec}",
    --   function(spec)
    --     return string.gsub(spec, "src", "src/test-bundles")
    --   end
    -- )
    local function generate_mocha_command(language)
      return string.format(
        ":vsplit term://node bundle-tests.js --entrypath={entry} " ..
        "&& mkdir -p test-bundles/src " ..
        "&& mv src/test-bundles/* test-bundles/src " ..
        "&& npx mocha --timeout 2000 --enable-source-maps " ..
        "--require=src/test/setup.js test-bundles/{spec}; " ..
        "rm -rf test-bundles"
      )
    end

    vim.g.mocha_js_command = generate_mocha_command("js")
    vim.g.mocha_ts_command = generate_mocha_command("ts")

    -- Remap
    vim.api.nvim_set_keymap(
      "n",
      "<leader>tc",
      ":wa<CR> :call RunCurrentSpecFile()<CR>",
      { noremap = true }
    )

    vim.api.nvim_set_keymap(
      "n",
      "<leader>ti",
      ":wa<CR> :call RunNearestSpec()<CR>",
      { noremap = true }
    )
  end

}
