import scripts.CommonVars.makeShaped as makeShaped;

// Fix dread lamp only working with ink sac and not any black dye
recipes.remove(<torchmaster:dread_lamp>);
makeShaped("nf_dread_lamp", <torchmaster:dread_lamp>,
        ["OOO",
         "PGP",
         "ODO"],
        { D : <ore:dyeBlack>,
          G : <minecraft:glowstone>,
          O : <minecraft:obsidian>,
          P : <minecraft:glass_pane>
        }
);
