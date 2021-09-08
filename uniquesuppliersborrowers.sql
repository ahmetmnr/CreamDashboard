WITH supply AS
(
SELECT COUNT(DISTINCT supplier) as suppliers,
    CASE
    
        WHEN "cToken" = '\xD06527D5e56A3495252A528C4987003b712860eE' THEN 'crETH'
        WHEN "cToken" = '\x797AAB1ce7c01eB727ab980762bA88e7133d2157' THEN 'crUSDT'
        WHEN "cToken" = '\x44fbebd2f576670a6c33f6fc0b00aa8c5753b322' THEN 'crUSDC'
        WHEN "cToken" = '\xcE4Fe9b4b8Ff61949DCfeB7e03bc9FAca59D2Eb3' THEN 'crBAL'
        WHEN "cToken" = '\x19D1666f543D42ef17F66E376944A22aEa1a8E46' THEN 'crCOMP'
        WHEN "cToken" = '\x9baF8a5236d44AC410c0186Fe39178d5AAD0Bb87' THEN 'crYCRV'
        WHEN "cToken" = '\x892B14321a4FCba80669aE30Bd0cd99a7ECF6aC0' THEN 'crCREAM'
        WHEN "cToken" = '\x697256CAA3cCaFD62BB6d3Aa1C7C5671786A5fD9' THEN 'crLINK'
        WHEN "cToken" = '\x8B86e0598616a8d4F1fdAE8b59E55FB5Bc33D0d6' THEN 'crLEND'
        WHEN "cToken" = '\xc7Fd8Dcee4697ceef5a2fd4608a7BD6A94C77480' THEN 'crCRV'
        WHEN "cToken" = '\x3c6c553a95910f9fc81c98784736bd628636d296' THEN 'crESD'
        WHEN "cToken" = '\x17107f40d70f4470d20cb3f138a052cae8ebd4be' THEN 'crRENBTC'
        WHEN "cToken" = '\x21011bc93d9e515b9511a817a1ed1d6d468f49fc' THEN 'crCOVER'
         WHEN "cToken" = '\xcbae0a83f4f9926997c8339545fb8ee32edc6b76' THEN 'crYFI'
                WHEN "cToken" = '\x01da76dea59703578040012357b81ffe62015c2d' THEN 'crYETH'
        WHEN "cToken" = '\x338286c0bc081891a4bda39c7667ae150bf5d206' THEN 'crXSUSHI'
        WHEN "cToken" = '\x054b7ed3f45714d3091e82aad64a1588dc4096ed' THEN 'crHBTC'
        WHEN "cToken" = '\x10fdbd1e48ee2fd9336a482d746138ae19e649db' THEN 'crFTT'
        WHEN "cToken" = '\x1d0986fb43985c88ffa9ad959cc24e6a087c7e35' THEN 'crALPHA'
        WHEN "cToken" = '\x1ff8cdb51219a8838b52e9cac09b71e591bc998e' THEN 'crBUSD'
        WHEN "cToken" = '\x22b243b96495c547598d9042b6f94b01c22b2e9e' THEN 'crSWAG'
        WHEN "cToken" = '\x2a537fa9ffaea8c1a41d3c2b68a9cb791529366d' THEN 'crDPI'
        WHEN "cToken" = '\x3225e3c669b39c7c8b3e204a8614bb218c5e31bc' THEN 'crAAVE'
        WHEN "cToken" = '\x3623387773010d9214b10c551d6e7fc375d31f58' THEN 'crMETA'
        WHEN "cToken" = '\x4ee15f44c6f0d8d1136c83efd2e8e4ac768954c6' THEN 'crYYCRV'
        WHEN "cToken" = '\x85759961b116f1d36fd697855c57a6ae40793d9b' THEN 'cr1INCH'
        WHEN "cToken" = '\x8b950f43fcac4931d408f1fcda55c6cb6cbf3096' THEN 'crBBADGER'
        WHEN "cToken" = '\x903560b1cce601794c584f58898da8a8b789fc5d' THEN 'crKP3R'
        WHEN "cToken" = '\x92b767185fb3b04f881e3ac8e5b0662a027a1d9f' THEN 'crDAI'
        WHEN "cToken" = '\xc25eae724f189ba9030b2556a1533e7c8a732e14' THEN 'crSNX'
        WHEN "cToken" = '\xcd22c4110c12ac41acefa0091c432ef44efaafa0' THEN 'crUNI-V2-DAI-ETH'
        WHEN "cToken" = '\xe89a6d0509faf730bd707bf868d9a2a744a363c7' THEN 'crUNI'
        WHEN "cToken" = '\xef58b2d5a1b8d3cde67b8ab054dc5c831e9bc025' THEN 'crSRM'
        WHEN "cToken" = '\xeff039c3c1d668f408d09dd7b63008622a77532c' THEN 'crWNXM'
        WHEN "cToken" = '\xfd609a03b393f1a1cfcacedabf068cad09a924e2' THEN 'crCRETH2'
        WHEN "cToken" = '\x10a3da2bb0fae4d591476fd97d6636fd172923a8' THEN 'crHEGIC'
        WHEN "cToken" = '\x8b3FF1ed4F36C2c2be675AFb13CC3AA5d73685a5' THEN 'crCEL'
        WHEN "cToken" = '\xd5103afcd0b3fa865997ef2984c66742c51b2a8b' THEN 'crHFIL'
        WHEN "cToken" = '\xd692ac3245bb82319a31068d6b8412796ee85d2c' THEN 'crHUSD'
        WHEN "cToken" = '\xf55BbE0255f7f4E70f63837Ff72A577fbDDbE924' THEN 'crBOND'
        WHEN "cToken" = '\x2db6c82ce72c8d7d770ba1b5f5ed0b6e075066d6' THEN 'crAMP'
        WHEN "cToken" = '\x7c3297cfb4c4bbd5f44b450c0872e0ada5203112' THEN 'crOCEAN'
        WHEN "cToken" = '\xb092b4601850e23903a42eacbc9d8a0eec26a4d5' THEN 'crFRAX'
        WHEN "cToken" = '\x197070723CE0D3810a0E47F06E935c30a480D4Fc' THEN 'crWBTC'
        WHEN "cToken" = '\xf8445c529d363ce114148662387eba5e62016e20' THEN 'crRAI'
        WHEN "cToken" = '\xc68251421edda00a10815e273fa4b1191fac651b' THEN 'crPICKLE'
         WHEN "cToken" = '\x59089279987dd76fc65bf94cb40e186b96e03cb3' THEN 'crOGN'
        WHEN "cToken" = '\x8379baa817c5c5ab929b03ee8e3c48e45018ae41' THEN 'crRUNE'
    END AS market
FROM creamfinance."Comptroller_evt_DistributedSupplierComp"
WHERE "compDelta" > 0
GROUP BY 2
ORDER BY 1 DESC),

demand AS
(
SELECT COUNT(DISTINCT borrower) as borrowers,
    CASE
       WHEN "cToken" = '\xD06527D5e56A3495252A528C4987003b712860eE' THEN 'crETH'
        WHEN "cToken" = '\x797AAB1ce7c01eB727ab980762bA88e7133d2157' THEN 'crUSDT'
        WHEN "cToken" = '\x44fbebd2f576670a6c33f6fc0b00aa8c5753b322' THEN 'crUSDC'
        WHEN "cToken" = '\xcE4Fe9b4b8Ff61949DCfeB7e03bc9FAca59D2Eb3' THEN 'crBAL'
        WHEN "cToken" = '\x19D1666f543D42ef17F66E376944A22aEa1a8E46' THEN 'crCOMP'
        WHEN "cToken" = '\x9baF8a5236d44AC410c0186Fe39178d5AAD0Bb87' THEN 'crYCRV'
        WHEN "cToken" = '\x892B14321a4FCba80669aE30Bd0cd99a7ECF6aC0' THEN 'crCREAM'
        WHEN "cToken" = '\x697256CAA3cCaFD62BB6d3Aa1C7C5671786A5fD9' THEN 'crLINK'
        WHEN "cToken" = '\x8B86e0598616a8d4F1fdAE8b59E55FB5Bc33D0d6' THEN 'crLEND'
        WHEN "cToken" = '\xc7Fd8Dcee4697ceef5a2fd4608a7BD6A94C77480' THEN 'crCRV'
        WHEN "cToken" = '\x3c6c553a95910f9fc81c98784736bd628636d296' THEN 'crESD'
        WHEN "cToken" = '\x17107f40d70f4470d20cb3f138a052cae8ebd4be' THEN 'crRENBTC'
        WHEN "cToken" = '\x21011bc93d9e515b9511a817a1ed1d6d468f49fc' THEN 'crCOVER'
        WHEN "cToken" = '\xcbae0a83f4f9926997c8339545fb8ee32edc6b76' THEN 'crYFI'
                WHEN "cToken" = '\x01da76dea59703578040012357b81ffe62015c2d' THEN 'crYETH'
        WHEN "cToken" = '\x338286c0bc081891a4bda39c7667ae150bf5d206' THEN 'crXSUSHI'
        WHEN "cToken" = '\x054b7ed3f45714d3091e82aad64a1588dc4096ed' THEN 'crHBTC'
        WHEN "cToken" = '\x10fdbd1e48ee2fd9336a482d746138ae19e649db' THEN 'crFTT'
        WHEN "cToken" = '\x1d0986fb43985c88ffa9ad959cc24e6a087c7e35' THEN 'crALPHA'
        WHEN "cToken" = '\x1ff8cdb51219a8838b52e9cac09b71e591bc998e' THEN 'crBUSD'
        WHEN "cToken" = '\x22b243b96495c547598d9042b6f94b01c22b2e9e' THEN 'crSWAG'
        WHEN "cToken" = '\x2a537fa9ffaea8c1a41d3c2b68a9cb791529366d' THEN 'crDPI'
        WHEN "cToken" = '\x3225e3c669b39c7c8b3e204a8614bb218c5e31bc' THEN 'crAAVE'
        WHEN "cToken" = '\x3623387773010d9214b10c551d6e7fc375d31f58' THEN 'crMETA'
        WHEN "cToken" = '\x4ee15f44c6f0d8d1136c83efd2e8e4ac768954c6' THEN 'crYYCRV'
        WHEN "cToken" = '\x85759961b116f1d36fd697855c57a6ae40793d9b' THEN 'cr1INCH'
        WHEN "cToken" = '\x8b950f43fcac4931d408f1fcda55c6cb6cbf3096' THEN 'crBBADGER'
        WHEN "cToken" = '\x903560b1cce601794c584f58898da8a8b789fc5d' THEN 'crKP3R'
        WHEN "cToken" = '\x92b767185fb3b04f881e3ac8e5b0662a027a1d9f' THEN 'crDAI'
        WHEN "cToken" = '\xc25eae724f189ba9030b2556a1533e7c8a732e14' THEN 'crSNX'
        WHEN "cToken" = '\xcd22c4110c12ac41acefa0091c432ef44efaafa0' THEN 'crUNI-V2-DAI-ETH'
        WHEN "cToken" = '\xe89a6d0509faf730bd707bf868d9a2a744a363c7' THEN 'crUNI'
        WHEN "cToken" = '\xef58b2d5a1b8d3cde67b8ab054dc5c831e9bc025' THEN 'crSRM'
        WHEN "cToken" = '\xeff039c3c1d668f408d09dd7b63008622a77532c' THEN 'crWNXM'
        WHEN "cToken" = '\xfd609a03b393f1a1cfcacedabf068cad09a924e2' THEN 'crCRETH2'
        WHEN "cToken" = '\x10a3da2bb0fae4d591476fd97d6636fd172923a8' THEN 'crHEGIC'
        WHEN "cToken" = '\x8b3FF1ed4F36C2c2be675AFb13CC3AA5d73685a5' THEN 'crCEL'
        WHEN "cToken" = '\xd5103afcd0b3fa865997ef2984c66742c51b2a8b' THEN 'crHFIL'
        WHEN "cToken" = '\xd692ac3245bb82319a31068d6b8412796ee85d2c' THEN 'crHUSD'
        WHEN "cToken" = '\xf55BbE0255f7f4E70f63837Ff72A577fbDDbE924' THEN 'crBOND'
        WHEN "cToken" = '\x2db6c82ce72c8d7d770ba1b5f5ed0b6e075066d6' THEN 'crAMP'
        WHEN "cToken" = '\x7c3297cfb4c4bbd5f44b450c0872e0ada5203112' THEN 'crOCEAN'
        WHEN "cToken" = '\xb092b4601850e23903a42eacbc9d8a0eec26a4d5' THEN 'crFRAX'
        WHEN "cToken" = '\x197070723CE0D3810a0E47F06E935c30a480D4Fc' THEN 'crWBTC'
        WHEN "cToken" = '\xf8445c529d363ce114148662387eba5e62016e20' THEN 'crRAI'
        WHEN "cToken" = '\xc68251421edda00a10815e273fa4b1191fac651b' THEN 'crPICKLE'
         WHEN "cToken" = '\x59089279987dd76fc65bf94cb40e186b96e03cb3' THEN 'crOGN'
        WHEN "cToken" = '\x8379baa817c5c5ab929b03ee8e3c48e45018ae41' THEN 'crRUNE'
    END AS market
FROM creamfinance."Comptroller_evt_DistributedBorrowerComp"
WHERE "compDelta" > 0
GROUP BY 2
ORDER BY 1 DESC
)

SELECT supply.market, suppliers, borrowers
FROM supply
LEFT JOIN demand ON supply.market = demand.market
ORDER BY 2 DESC
