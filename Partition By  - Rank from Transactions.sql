select *
from (select 
t."companyId",
t."employeeId",
c."companyName",
e."name",
e.surname,
e.email,
t."amount.amountInCents" /100 amount,
t."Date",
rank() over(partition by t."employeeId" order by t."Transaction Iso Time")
from (select *
		from dwh."Transactions" t
		where true
		and state = 'confirmed'
		and "Date" between '2022-11-03' and '2022-11-10'
		and "employeeId" in(	
'auth0|5d9df454dc53f50e2cc3c27e',
'auth0|624b0320b277250069043c3f',
'auth0|624435ed8e80ec006ae9df02',
'auth0|62d81538b18ce2c2cd6f596a',
'auth0|62d8153ab5dea53586d94f74',
'auth0|62d8153bb5dea53586d94f75',
'auth0|62d8153ebe6cebf7acd42950',
'auth0|62d815421634c3e9d05eb02c',
'auth0|62d8154abe6cebf7acd42970',
'auth0|62d81598ead9a92294c43a28',
'auth0|62d81557dd58fc5351cb37df',
'auth0|62d81550dd58fc5351cb37cd',
'auth0|62d8152f6f5321b9eee98545',
'auth0|62d81531324ec18dcf1d50b2',
'auth0|5de531e829f9cd0e32044ce7',
'auth0|5e28337708d0e20f1af98bbc',
'auth0|61003ad28dd070006aa9074d',
'auth0|5fc9188de3b04b00769f3759',
'auth0|60117dd58e5f53006a83f41b',
'auth0|60e432733b69cb0071417b46',
'auth0|5f89b5ee336a880077da3667',
'auth0|6027af61a89ec30070fd8b15',
'auth0|5fa269f9a6ebc500693c2d7d',
'auth0|5fa525f323be5e0075a5faad',
'auth0|612e513abda71b0071b93da8',
'auth0|5d6564ba4fdd350d510139e9',
'auth0|5d6564bb4fdd350d510139ed',
'auth0|6086e6f5b16bc40069bf243f',
'auth0|5d6564c34fdd350d510139f2',
'auth0|606363b2745f4d006a70ff15',
'auth0|5d6564c34fdd350d510139f3',
'auth0|606474c25971da006a9617d8',
'auth0|606d9887ed8ac80070152cad',
'auth0|5de53232a64cae0fca505d5f',
'auth0|5de5322a39193e0f923f8e1f',
'auth0|5de532207cfdb60e36cded0a',
'auth0|5de5321939193e0f923f8e16',
'auth0|5de5321839193e0f923f8e12',
'auth0|5de5320839193e0f923f8e0d',
'auth0|5de53208a64cae0fca505d4a',
'auth0|5de531fe39193e0f923f8e07',
'auth0|5de531f77cfdb60e36cdecf1',
'auth0|5de531e72d75f50f860f8e7f',
'auth0|5de531dea64cae0fca505d39',
'auth0|5de531d739193e0f923f8df6',
'auth0|5de531cf39193e0f923f8ded',
'auth0|5de531ce39193e0f923f8dec',
'auth0|5de531be29f9cd0e32044cd2',
'auth0|5de531b77cfdb60e36cdecce',
'auth0|5de531b57cfdb60e36cdeccc',
'auth0|5de531a6b2658c0e34ea2303',
'auth0|5de531a52d75f50f860f8e64',
'auth0|5de531a47cfdb60e36cdecc3',
'auth0|5de531a4b2658c0e34ea2301',
'auth0|5de531a429f9cd0e32044cbf',
'auth0|5de531a4a64cae0fca505d21',
'auth0|5de531962d75f50f860f8e5b',
'auth0|5de53195a64cae0fca505d17',
'auth0|5de5318ba64cae0fca505d11',
'auth0|5dd7dfa481164b0f116c56ee',
'auth0|5dd7dfa4f8ff150f1013f35e',
'auth0|5f34087c9580dd006d097304',
'auth0|5e5539918fb6f40f44ced376',
'auth0|5e55399197695216e5e47b79',
'auth0|614379ccd9024a006874218a',
'auth0|5e28338008d0e20f1af98bc7',
'auth0|5f6dfd187bdc87006bbeae7a',
'auth0|5e2833777a8ce20f219ec907',
'auth0|626421ab22ac67006809eabf',
'auth0|6264215faffffc00694951d8',
'auth0|635a46e63406850b2914ae0b',
'auth0|5df8b1694bd6030d32edfc29',
'auth0|5df8b1af4bd6030d32edfc67',
'auth0|5df8b2184bd6030d32edfc8f',
'auth0|5df8b110852ed50d2af0b273',
'auth0|622f2fb6a2013e00683935ec',
'auth0|5efb2869ef0da100134c05cb',
'auth0|5efb285227d4a00019e32ed6',
'auth0|5efb28bf9794040013b6e896',
'auth0|5efb289d4822a7001a3a7bf9',
'auth0|5efb28ab27d4a00019e32f75',
'auth0|5efb287438468b00141069db',
'auth0|5efb28754822a7001a3a7bae',
'auth0|5efb287e38468b00141069eb',
'auth0|5efb287c27d4a00019e32f19',
'auth0|5ef0b4cb06f6770013a719cf',
'auth0|5efb287e27d4a00019e32f22',
'auth0|616008135d3d9d0070e94749',
'auth0|5efb285e27d4a00019e32ee7',
'auth0|5efb285fef0da100134c05ba',
'auth0|5efb285d4822a7001a3a7b85',
'auth0|5efb287427d4a00019e32f0e',
'auth0|5efb287f27d4a00019e32f24',
'auth0|5efb284f38468b001410699f',
'auth0|6079635a1adc060070667be2',
'auth0|61e16dd55a8173006a8b6451',
'auth0|61e16dd5658906006ac59e62',
'auth0|61e16df107c5210069801267',
'auth0|61e16e1eaa3b17006a6ad054',
'auth0|61e16e1ece94d70068f2702a',
'auth0|6262a1ec023bc2006f0af501',
'auth0|62b2d3df02c8658de25e5bdb',
'auth0|6230b3e9ec891e0069727d3d',
'auth0|629de435bf2f7d0069e9364b',
'auth0|62c6abed67932bb24fead9c4',
'auth0|62c6acf757b3c9217faa7eae',
'auth0|628c9408a860cd00696caa63',
'auth0|61e16e805ccbd7007145a0a8',
'auth0|623dc350bf019f0070456519',
'auth0|61e16c27406a5a00700b108b',
'auth0|61e16c28406a5a00700b108c',
'auth0|61e16c3205b8740069f5dff1',
'auth0|61cd6ba3c7f0cd006b2df9cb',
'auth0|61cd6ba39ad694007167a59d',
'auth0|5de4c7e87cfdb60e36cddb29',
'auth0|5de4c7afa64cae0fca504ab8',
'auth0|5de4c7d82d75f50f860f7c81',
'auth0|5de4c7d829f9cd0e32043b0a',
'auth0|5de4c7d929f9cd0e32043b0b',
'auth0|5de4c7d929f9cd0e32043b0d',
'auth0|5de4c7df39193e0f923f7c41',
'auth0|5de4c7e7a64cae0fca504ad4',
'auth0|5de4c7e929f9cd0e32043b17',
'auth0|5de4c80029f9cd0e32043b21',
'auth0|5de4c81829f9cd0e32043b2c',
'auth0|5de4c81829f9cd0e32043b2e',
'auth0|5de4c81f39193e0f923f7c51',
'auth0|5de4c821a64cae0fca504af0',
'auth0|5de4c828a64cae0fca504af2',
'auth0|5de4c8497cfdb60e36cddb4b',
'auth0|5de4c8507cfdb60e36cddb4e',
'auth0|5de4c851b2658c0e34ea112a',
'auth0|5de4c85939193e0f923f7c68',
'auth0|5de4c861b2658c0e34ea1132',
'auth0|5de4c8672d75f50f860f7ccb',
'auth0|5de4c87039193e0f923f7c6f',
'auth0|5de4c8717cfdb60e36cddb5f',
'auth0|5de4c88239193e0f923f7c75',
'auth0|5de4c89839193e0f923f7c84',
'auth0|5de4c89939193e0f923f7c88',
'auth0|5de4c8a0a64cae0fca504b1b',
'auth0|5de4c8a8b2658c0e34ea114a',
'auth0|5de4c8a929f9cd0e32043b70',
'auth0|5de4c8b27cfdb60e36cddb76',
'auth0|5de4c8c12d75f50f860f7cef',
'auth0|5de4c8d129f9cd0e32043b85',
'auth0|5de4c8d139193e0f923f7ca0',
'auth0|5de4c8d9a64cae0fca504b32',
'auth0|5de4c8da29f9cd0e32043b8b',
'auth0|5de4c8e17cfdb60e36cddb89',
'auth0|5de4c8e1b2658c0e34ea1164',
'auth0|5de4c8e239193e0f923f7ca4',
'auth0|5de4c8e9a64cae0fca504b3b',
'auth0|5de4c913a64cae0fca504b53',
'auth0|5de4c91329f9cd0e32043ba9',
'auth0|5de4c91a29f9cd0e32043bab',
'auth0|5de4c92a39193e0f923f7cbc',
'auth0|5de4c92c29f9cd0e32043bb5',
'auth0|5de4c9342d75f50f860f7d21',
'auth0|5de4c93a7cfdb60e36cddba6',
'auth0|5de4c94229f9cd0e32043bbd',
'auth0|5de4c943b2658c0e34ea1191',
'auth0|5de4c94339193e0f923f7cc4',
'auth0|5de4c94429f9cd0e32043bbe',
'auth0|5de4c94a2d75f50f860f7d26',
'auth0|5de4c94b29f9cd0e32043bc0',
'auth0|5de4c9537cfdb60e36cddbae',
'auth0|5de4c964b2658c0e34ea11a4',
'auth0|5de4c96c29f9cd0e32043bce',
'auth0|5de4c97a29f9cd0e32043bd3',
'auth0|5de8d983454ea00eacd090c6',
'auth0|5df0e771e2e1bd0e9bebcfb8',
'auth0|5df37aca3c7b600f187e0287',
'auth0|5e316133fd14730e85505be2',
'auth0|5eec6ef66c43b50019fbf691',
'auth0|5eec6ee810bd10001952284f',
'auth0|5eec6ed36c43b50019fbf656',
'auth0|6070496a23d80e0071bb59f3',
'auth0|5eec6ee610804d0019ccafab',
'auth0|6137a98b898692006a23d5df',
'auth0|62ab35f5040021eb5b6a46f7',
'auth0|5eec6ecf6c43b50019fbf64e',
'auth0|5eec6efff2bd60001352b84b',
'auth0|5eec6ee70bedf900137cb510',
'auth0|5eec6efe0bedf900137cb52f',
'auth0|5f6cc0634dbd48007675a609',
'auth0|5fb79fedd1d5c2006a62cdbe',
'auth0|5f6cc05254fdf5006f17d583',
'auth0|5f6cc0515924f0006f06fbf2',
'auth0|5f6cc05052cb550078439929',
'auth0|5db1a962c0ef660e3344122e',
'auth0|616718e41c278900682ea0c4',
'auth0|616718df5cd96b00702f6bbf',
'auth0|5e4127166f9f3a0e4d3f9a51',
'auth0|616718dc5cd96b00702f6bb7',
'auth0|616718cc25f2030068043280',
'auth0|5f563b25ae2437006d8bc5cd',
'auth0|616718c95d3d9d0070ebadda',
'auth0|616718c9b424680069031667',
'auth0|6167187bedcd510070eb100e',
'auth0|616718fab424680069031694',
'auth0|616718f4b424680069031687',
'auth0|616718c05cd96b00702f6b7c',
'auth0|5db1a90d2fb6e40e2f6988fc',
'auth0|5db1a7d6c0ef660e33441180',
'auth0|61671895ed3a290068b1b7df',
'auth0|5db1a8fac0ef660e334411f7',
'auth0|5db1a89a2fb6e40e2f6988c1',
'auth0|5db1a88d2fb6e40e2f6988bc',
'auth0|5db1a7d75a87ec0e3367b711',
'auth0|616718a75cd96b00702f6b67',
'auth0|616718ea1c278900682ea0d1',
'auth0|5db1aa402fb6e40e2f6989b9',
'auth0|5db1aa342fb6e40e2f6989af',
'auth0|5db1aa22c0ef660e334412a3',
'auth0|5db1a9fe2fb6e40e2f69898e',
'auth0|5db1a986c0ef660e33441244',
'auth0|5db1a86a5a87ec0e3367b740',
'auth0|5db1a9745a87ec0e3367b7d2',
'auth0|5db1a968c0ef660e33441232',
'auth0|5db1a92bc0ef660e3344120f',
'auth0|6290970c5e8c8a006a7f0163',
'auth0|6299c21d937877006e4b3203',
'auth0|626a8053e70d0d006f6072af',
'auth0|6299c21dc04748006fab1ab4',
'auth0|62ab57f9c23c6f79db0648ad',
'auth0|61cd6b5a8e318c006f30aaee',
'auth0|61cd6b5b5aaf33006fb18ce0',
'auth0|5fc65281cb996a00734848e0',
'auth0|5fc6528903359b0068767518',
'auth0|5fc6524d8e249d0071e9992b',
'auth0|5fc6517703359b0068767412',
'auth0|60924c56ba2d49006a7b6173',
'auth0|5fc651e144894a006808204b',
'auth0|5fc653e3cb996a0073484a5b',
'auth0|5fc652bfd1d5c2006a673f8a',
'auth0|5fc651feaa67b20075961197',
'auth0|60e4230f1936b0006b1b5cbd',
'auth0|5fc65195afd759006e266a34',
'auth0|600ede57ce2589007196817f',
'auth0|600559715483dd0069561dc5',
'auth0|5fc6530044894a006808213d',
'auth0|5fc6537703359b0068767635',
'auth0|5fc653998e249d0071e99a28',
'auth0|5fc653ed8e249d0071e99a8a',
'auth0|5fc653b6d1d5c2006a674082',
'auth0|5fc653826f9cd0006bffc805',
'auth0|5fc6540f537f9200707b975f',
'auth0|5fc6528c03359b0068767523',
'auth0|5fc6540e537f9200707b975a',
'auth0|5fc653f6537f9200707b9722',
'auth0|5fc653ed8e249d0071e99a8c',
'auth0|5fc653b4d1d5c2006a67407c',
'auth0|5fc653f6537f9200707b971f',
'auth0|6290b211e05a11006ab12eb3',
'auth0|5fc65174cb996a0073484736',
'auth0|5fc65258d1d5c2006a673ead',
'auth0|5fc651a1afd759006e266a50',
'auth0|5fc652186f9cd0006bffc6dc',
'auth0|5fc65342cb996a0073484a0b',
'auth0|5fc653408e249d0071e999b8',
'auth0|5fc6525bcb996a00734848bf',
'auth0|5fc651f4aa67b20075961184',
'auth0|5fc651cc44894a0068082010',
'auth0|5fc65189cb996a007348475f',
'auth0|5fc65176537f9200707b956d',
'auth0|5fc6515bafd759006e2669ea',
'auth0|5fc651676f9cd0006bffc621',
'auth0|5fc653c0aa67b2007596128a',
'auth0|5fc653b46f9cd0006bffc852',
'auth0|5fc6515c8e249d0071e998ea',
'auth0|60a36fcff0e8ff00697ef550',
'auth0|5fc6516803359b0068767406',
'auth0|62fb483a9d81a1f2cfdb18a8',
'auth0|5fc651608e249d0071e998f1',
'auth0|5fc65150aa67b20075961152',
'auth0|5fc653bd8e249d0071e99a49',
'auth0|5fc653b644894a0068082269',
'auth0|5fc653f7537f9200707b9725',
'auth0|5fc653ecd1d5c2006a6740f9',
'auth0|5fc6534a44894a00680821ce',
'auth0|5fc6532b6f9cd0006bffc79d',
'auth0|5fc6534303359b00687675d1',
'auth0|5fc652a8d1d5c2006a673f5d',
'auth0|5fc652c9d1d5c2006a673fa2',
'auth0|5fc6535444894a00680821e7',
'auth0|5fc652cb6f9cd0006bffc77b',
'auth0|5fc6534d44894a00680821d7',
'auth0|607d644884219c0068215216',
'auth0|607d64d308a8af006c3f1bed',
'auth0|607d644708a8af006c3f1af9',
'auth0|607d6446669922006e03a149',
'auth0|607d64ef1adc0600706814c0',
'auth0|607d643b669922006e03a132',
'auth0|607d64ef0686bf00757f561d',
'auth0|607d65097bb43a006b5f0ea7',
'auth0|607d6490b16bc40069b9e6a1',
'auth0|607d643ab16bc40069b9e622',
'auth0|607d643149fd840073858567',
'auth0|607d650b7bb43a006b5f0eb4',
'auth0|607d6513669922006e03a276',
'auth0|607d64a208a8af006c3f1ba5',
'auth0|607d651ab16bc40069b9e763',
'auth0|607d651a7bb43a006b5f0ee2',
'auth0|607d64a308a8af006c3f1baa',
'auth0|607d652608a8af006c3f1c70',
'auth0|607d642b0686bf00757f5537',
'auth0|607d64ef1adc0600706814be',
'auth0|607d64ee7bb43a006b5f0e67',
'auth0|607d64e57bb43a006b5f0e55',
'auth0|607d64e37bb43a006b5f0e46',
'auth0|607d642849fd840073858552',
'auth0|607d6421b16bc40069b9e5ea',
'auth0|607d641f1adc0600706813a1',
'auth0|607d641f0686bf00757f5517',
'auth0|607d64181adc060070681392',
'auth0|607d64171adc06007068138f',
'auth0|607d6415b16bc40069b9e5d6',
'auth0|607d652d1adc060070681531',
'auth0|607d652f0686bf00757f5674',
'auth0|607d653684219c00682152d6',
'auth0|607d653884219c00682152de',
'auth0|607d653808a8af006c3f1c97',
'auth0|607d653f84219c00682152f0',
'auth0|607d65410686bf00757f569a',
'auth0|607d6542669922006e03a2c1',
'auth0|607d654849fd84007385860a',
'auth0|607d654949fd840073858610',
'auth0|607d65521adc06007068155f',
'auth0|607d8330b16bc40069ba0269',
'auth0|607d64a31adc06007068143d',
'auth0|607d65110686bf00757f5655',
'auth0|607d64a30686bf00757f55af',
'auth0|607d64dc1adc06007068149f',
'auth0|607d64a47bb43a006b5f0dbc',
'auth0|607d64a47bb43a006b5f0dbe',
'auth0|607d64ab1adc060070681450',
'auth0|607d6500b16bc40069b9e732',
'auth0|607d65001adc0600706814dc',
'auth0|607d64ff1c9629006daa5002',
'auth0|607d647f49fd8400738585b6',
'auth0|607d647d08a8af006c3f1b55',
'auth0|607d64757bb43a006b5f0d8d',
'auth0|607d646e0686bf00757f5570',
'auth0|607d64631c9629006daa4f37',
'auth0|607d6480669922006e03a1b0',
'auth0|607d64861c9629006daa4f5a',
'auth0|607d64631c9629006daa4f35',
'auth0|607d64fe7bb43a006b5f0e7c',
'auth0|607d648fb16bc40069b9e69c',
'auth0|607d64620686bf00757f5555',
'auth0|607d646249fd84007385858c',
'auth0|607d64610686bf00757f554f',
'auth0|607d64f708a8af006c3f1c3a',
'auth0|607d645b49fd84007385857a',
'auth0|607d645a84219c0068215246',
'auth0|607d64db1c9629006daa4fc0',
'auth0|607d64ac1adc060070681454',
'auth0|607d64ad7bb43a006b5f0de2',
'auth0|607d64b60686bf00757f55e1',
'auth0|607d6501b16bc40069b9e734',
'auth0|607d6452669922006e03a167',
'auth0|607d64f5b16bc40069b9e716',
'auth0|607d645184219c006821522e',
'auth0|607d6501b16bc40069b9e736',
'auth0|607d64b8b16bc40069b9e6d6',
'auth0|607d64be0686bf00757f55f1',
'auth0|607d64c184219c006821528a',
'auth0|607d64ca08a8af006c3f1bdb',
'auth0|607d651c08a8af006c3f1c4c',
'auth0|607d64d108a8af006c3f1bea',
'auth0|5ff85d7ab89878007633557d',
'auth0|60a770e4ff2d180069b67e40',
'auth0|5fc6053baa67b2007595e6c4',
'auth0|5fc60525cb996a0073481583',
'auth0|5fc605316f9cd0006bff9900',
'auth0|5fc6053203359b0068764423',
'auth0|5e61195cc66a060d6adaa1f0',
'auth0|5d2c1bae90e26a0cf134a496',
'auth0|5d2c1be685e78d0d2fcd749f',
'auth0|5d2c1bf685e78d0d2fcd74ab',
'auth0|5d2c1c1f85e78d0d2fcd74d2',
'auth0|5d2c1c2090e26a0cf134a4e8',
'auth0|5d2c1c2f90e26a0cf134a4f2',
'auth0|5d2c1c37b82b570ce8bd414f',
'auth0|5d2c1c3e90e26a0cf134a4f8',
'auth0|5d2c1c49b82b570ce8bd415c',
'auth0|5d5147b0997ace0ec4f4fc7c',
'auth0|5d6e93c86a96d70ec10b0843',
'auth0|5d81fd79de44fe0e147f102b',
'auth0|5d8228bff33bf90e104c513f',
'auth0|5d946d520de2030d5b62a1c3',
'auth0|5da5e6b6301b880e7da05576',
'auth0|5db720b1c20ded0e3176f993',
'auth0|5dc5a5779300e80f09171175',
'auth0|5dc5a57e9300e80f09171178',
'auth0|5dcd9cf61c4b1b0f060d96c8',
'auth0|624daf1fe351c9006fe8e920',
'auth0|624daf1f356357006fdc18c6',
'auth0|624c1888ea5c430070856eb6',
'auth0|623208180a775a006a32fc2b',
'auth0|622886ab8429850068c0cf7e',
'auth0|6220b2631d11b7006a0c9c86',
'auth0|621fa2c2688f830071c5bd0e',
'auth0|621fa2bd3cb1910071d7624a',
'auth0|62029b7a35d20d0069be8092',
'auth0|6203a0fc41ad3b0068e5d47b',
'auth0|62029afd49626400756741b9',
'auth0|61e82d4f5ccbd7007148af9f',
'auth0|61e82d4b486b7c007170504a',
'auth0|61e80cfdce94d70068f56c5b',
'auth0|5de656b339193e0f923fa1f1',
'auth0|5de656b32d75f50f860fa320',
'auth0|5de656b4a64cae0fca507158',
'auth0|61dec2249ca767006e1b10bd',
'auth0|61d458d932816a00713da744',
'auth0|5df8c0a84bd6030d32ee00f1',
'auth0|5e1caee18e78170eca72c193',
'auth0|5e39590ad77aa50e4f147339',
'auth0|61b9ce0232816a00712ee3f7',
'auth0|61b332384b0313006aae598e',
'auth0|61af7eab13ca7300691b6826',
'auth0|61a79a18aa6a670072495a26',
'auth0|61a79a174093540068c80c5b',
'auth0|61a79a1451d621006ece6f94',
'auth0|61950fe0889de0006afff3db',
'auth0|618c0552544fc3006d5aa400',
'auth0|617bed57d1063b0067ffc685',
'auth0|617a7a4d1c278900683586d8',
'auth0|5e412740fa427419df421056',
'auth0|616d8ceaed3a290068b3d1f4',
'auth0|616839065cd96b00702fdbe9',
'auth0|61681441ed3a290068b20f88',
'auth0|5f086ea176004400139e4490',
'auth0|616320f0edcd510070e97d05',
'auth0|616320ef5cd96b00702dd32a',
'auth0|615444dc1c27890068278df2',
'auth0|615444da1c27890068278de7',
'auth0|615444da1c27890068278de5',
'auth0|614c9473de45d300692bfa26',
'auth0|614b5fbf53b183006ace025b',
'auth0|614af9d25f003c00697cdef7',
'auth0|5f6b51825df4ba00691da23d',
'auth0|614347571b54e500720412b7',
'auth0|6139f5295d64fe0072f45a86',
'auth0|6139f5276972a400703ae45e',
'auth0|6139f5252c6a450069417567',
'auth0|61364063fc2828006ad20a4e',
'auth0|6130a3e432fa78006af8b97a',
'auth0|6130a3de4b1db80068fd7c2d',
'auth0|6130a3dd4b1db80068fd7c29',
'auth0|6130a3dd4b1db80068fd7c2b',
'auth0|612e1951c6343500693e2b4c',
'auth0|61276289a61edb00699011ac',
'auth0|612762890e245a006a299cb3',
'auth0|611e374983ef25006915da28',
'auth0|6114f3349370c40070243c31',
'auth0|61114a7034579600715ffa1c',
'auth0|5fc92eeebdf908007dd8ec89',
'auth0|5fc92eecbdf908007dd8ec82',
'auth0|60f84acf013ce9006a5cd319',
'auth0|60f84ac88a1c06006895fef2',
'auth0|5fd5f163c510600072a798ba',
'auth0|5fd5f163c510600072a798bc',
'auth0|5fd5f160c510600072a798b4',
'auth0|5fd5f164e3b04b0076a3060c',
'auth0|60eeab1ac491110069624975',
'auth0|60eeab2360901a006aea78ec',
'auth0|60eeab1cc49111006962497e',
'auth0|60eeab1cc491110069624980',
'auth0|60eeab06c491110069624963',
'auth0|5fff35af98b68900751c1620',
'auth0|5fff35b8f84781006963e957',
'auth0|5fff35bc4bfe9800686a0346',
'auth0|5fff35bd98b68900751c1630',
'auth0|5fff35c533618a00763cc1a9',
'auth0|5fff35c698b68900751c163e',
'auth0|5fff35cf5483dd0069545cce',
'auth0|5fff35d033618a00763cc1b7',
'auth0|5fff35d85483dd0069545cd5',
'auth0|600ec40a7038e20071c87ce3',
'auth0|60dd9dada6e9dc006b96d395',
'auth0|6022a489f87dce00719e1a0e',
'auth0|6022a48afb308d0069b97dc2',
'auth0|60db312ab499ad0071973eb8',
'auth0|602a45ebc6ce2e0069609ce3',
'auth0|602fd0a9491387006c8e533e',
'auth0|602fd09bb771b2006b9ad2ab',
'auth0|602fd0a515df33007149c3f4',
'auth0|602fd0aac122e40069874aee',
'auth0|602fd09cb771b2006b9ad2b2',
'auth0|602fd0a6491387006c8e5336',
'auth0|6037c0f759d59600687d294f',
'auth0|6037c25abb41770069a9d115',
'auth0|6038d64f59d59600687d9e76',
'auth0|6038db9b59d59600687da1b1',
'auth0|603cda1987108f006847e248',
'auth0|60d1a7cfef2a5e0068d73c58',
'auth0|6048da574a02bb006908a106',
'auth0|60d1a7cdbecf8e0069bc90ae',
'auth0|60d1a7bb0eb20b0069993bd1',
'auth0|60d1a7bbbd965400711c0ca0',
'auth0|60d1a7c3ef2a5e0068d73c3c',
'auth0|60d1a7b9ade114007147f5f6',
'auth0|609d1b5ef0e8ff00697c0ca9',
'auth0|609407b613cd7c007013f057',
'auth0|60897915b9ad5300697d25e4',
'auth0|608979123dcfa40070c32775',
'auth0|6059c2381926e7006ff927ec',
'auth0|6059c2387f42aa006955bacc',
'auth0|6062fb619a775f0068d674c2',
'auth0|6062fb600027e40069fb6641',
'auth0|606d9f4bf955fa006994cc05',
'auth0|606d9f4ca290ed006860431a',
'auth0|6076f475b1d52e006af8d4b7',
'auth0|5cff7ee082183b0e91888004',
'auth0|5cff7ed282183b0e91887ff6',
'auth0|5cff7ed13912b30ef44b994c',
'auth0|5cff7ee182183b0e91888007',
'auth0|5ddcfa0b7cfdb60e36cd4936',
'auth0|5dc17e5bfd535c0e361e5d4e',
'auth0|5cff9186efc29d0eec9ab66b',
'auth0|5f8d7af8336a880077db3a7f',
'auth0|5f56494742e345006db40026',
'auth0|5f4e39180877fd00676fd590',
'auth0|5e4134e4382dd8199dee2438',
'auth0|5d0226683f103e0c92fd68c4',
'auth0|619e3179a3a386006ab8c0af',
'auth0|619e318aafc055006961ec8c',
'auth0|6045f61dde499f00711566a4',
'auth0|6045f61e8edfcc006950f4bd',
'auth0|6050d6a4f5b48b007084c8a6',
'auth0|5dfb9e03a2bdec0ecc4a57e7',
'auth0|5e25b3dbbac7291b6de98ec1',
'auth0|5dfb9e0ca2bdec0ecc4a57ed',
'auth0|60f52505a0709c006a927592',
'auth0|5dfb9e1a9cdedd0eb3af463b',
'auth0|5e380de3ca7d3d0ed9bce7e9',
'auth0|60f525069764ba00706a9e29',
'auth0|5dfb9df49cdedd0eb3af461b',
'auth0|5dfb9e129cdedd0eb3af4636',
'auth0|5dfb9e149cdedd0eb3af4639',
'auth0|5e60d56a2679e40d6644394c',
'auth0|5e1d88358b17ee0e75d4e6f2',
'auth0|5dfb9e149cdedd0eb3af463a',
'auth0|60f52507a0709c006a927599',
'auth0|5dfb9f1a8266a20ed44916d1',
'auth0|5dfb9dfc8266a20ed4491673',
'auth0|5dfb9e1b9cdedd0eb3af463e',
'auth0|61cd6a33f2924c00710053f7',
'auth0|63175a37402f0756c9f0db8d',
'auth0|63175a542d871df9def5ab1a',
'auth0|61cd6a269ad694007167a4d3',
'auth0|61cd6a1a5c4760006f2dd119',
'auth0|6203bd02f6e8210068d0f772',
'auth0|61fbc97212e12d007502b69d',
'auth0|61e94c27cb33ce00687e59ca',
'auth0|61fbc962ea4134006ad4cc61',
'auth0|624e97580ca8e20068a47710',
'auth0|624e97581d057e006ff2a457',
'auth0|624e97555f085c006f48f733',
'auth0|624577d542eabe006fb9de91',
'auth0|624577d6a02741006accf3b2',
'auth0|623982c5a1c8c60068acafb3',
'auth0|6229dc39b35d98006a056eb6',
'auth0|6274dc4e1e07930069de3846',
'auth0|627a48f011fb7c0068ffadab',
'auth0|6229dc39bf6ef500705da00b',
'auth0|627bb9193f29330068f0c4b2',
'auth0|627bb91abae0570068818aa5',
'auth0|627bb91b7e31bb006f62f427',
'auth0|6229dc39bf6ef500705da00f',
'auth0|6220abd4688f830071c6e21e',
'auth0|628646eeb7324a0068c95a09',
'auth0|628646ee9a3ef5006994ecde',
'auth0|628f978d11aa51006972f11d',
'auth0|6299c377c1d48200680d2aec',
'auth0|6220abd35f5717006a3579b3',
'auth0|621776c0fda3110069f35956',
'auth0|624577d51545e60070a251c1',
'auth0|624e97558a38ae006a097b52',
'auth0|6214ff7ca8712a006951c133',
'auth0|6214ff7aa8712a006951c12c',
'auth0|63175a36948f29637233bf58',
'auth0|63175a370a7a3a551445f9a5',
'auth0|61cd6a66f2924c0071005419',
'auth0|61cd6a5745d7ae006aeed996',
'auth0|61cd6a4f439817006fc16d1a',
'auth0|61cd6a81262fcd00693788ba',
'auth0|63175a313182e9a6e5f02668',
'auth0|63175a3653f3745ba20087ee',
'auth0|60e81a38b362200071dd16d2',
'auth0|603f8437bcf4390068e1e81c',
'auth0|603f84379e6355006b2c8f03',
'auth0|603f8438f5e83c006a507c37',
'auth0|62c42c2f91d815c750e252f3',
'auth0|62c42c31d2226e38cd73562a',
'auth0|606aed6347bb9c006a0fdc08',
'auth0|606aed615971da006a982ac0',
'auth0|606aed587e445e0071d0db56',
'auth0|606aed623be8b70071f7daf7',
'auth0|61cdae44efd2e00071f4a1f3',
'auth0|61cdae44ca65450069053924',
'auth0|6123c28c08febf006962d125',
'auth0|61696ec425f2030068050f50',
'auth0|61696ec5ed3a290068b293f7',
'auth0|61825314b345120069ceb6bf',
'auth0|6192559d6bd08a0070b266f6',
'auth0|6192559f1b1a2e006902b0b7',
'auth0|61bb174a45d7ae006ae6c4f3',
'auth0|6218b12d1d3bd60070b38569',
'auth0|606dd6d98c409700717be7b0',
'auth0|5df272da1cb3880ed311cb46',
'auth0|6040c1cd7910a4006996f934',
'auth0|62bf0a8673d8d7340abcc299',
'auth0|605e089ece5f52006ad71dab',
'auth0|5df272e3a05c740ec4c37894',
'auth0|605e089dedabe00070989953',
'auth0|605e089d601d8c006ebce7ad',
'auth0|5df272e2e454330ecf0260cb',
'auth0|5df272e2e454330ecf0260ca',
'auth0|6257da8607769f006e3f916e',
'auth0|62208c0e7b067900750e0fcb',
'auth0|62ac3eb27d9acafdd49ad2c2',
'auth0|627d04729319860068663778',
'auth0|5df272dc1cb3880ed311cb4c',
'auth0|606dd6d9187a6d006898fcf9',
'auth0|5df272d4a05c740ec4c37889',
'auth0|5df272d2e454330ecf0260c1',
'auth0|5df272cce454330ecf0260c0',
'auth0|5df272c3a05c740ec4c3787d',
'auth0|5df272c3e454330ecf0260b2',
'auth0|627d0379dc50dc006f92ce45',
'auth0|602b7f8a9f3e2d0068bd464f',
'auth0|5df272e31cb3880ed311cb51',
'auth0|5df272eba05c740ec4c3789b',
'auth0|5df272f2e454330ecf0260d4',
'auth0|5fb547728e249d0071e43b2e',
'auth0|6257eb71c539fc0069b2d0df',
'auth0|5df272f31cb3880ed311cb5a',
'auth0|5f7b22a054fdf5006f1d3601',
'auth0|5df272fae454330ecf0260dc',
'auth0|5df272fba05c740ec4c378a7',
'auth0|5f06e9ea920eff001999ef0f',
'auth0|5ecccdbb9cf3c30bf9d02c23',
'auth0|6257e9ea10e9bd006ab2930d',
'auth0|6242e4ec238ea10070b90b84',
'auth0|5e6760ff8969af0d7a0d25ea',
'auth0|5df272fce454330ecf0260df',
'auth0|5e4e5eb822f7201a20c30eba',
'auth0|5df272fca05c740ec4c378ab',
'auth0|6257dcb288f4a80070483cbe',
'auth0|6183b5c68eb8a600695fe3b6',
'auth0|6183b5c7b345120069cf09aa',
'auth0|5df27303e454330ecf0260e4',
'auth0|5e2f07cfed14730e8c9db960',
'auth0|6257dad09036c20068edb0bf',
'auth0|5feb1f0a71f55b00697140e4',
'auth0|5feb1f0ab9aa4b00766016d4',
'auth0|61c30cf48e318c006f2ca63d',
'auth0|5df2730ae454330ecf0260e8',
'auth0|5df2730be454330ecf0260ea',
'auth0|5df27313a05c740ec4c378bb',
'auth0|5df27313e454330ecf0260f1',
'auth0|60990e96b638f70071588687',
'auth0|5fc782194d6e5b006ceff806',
'auth0|62e26585e9346de396115346',
'auth0|62e265496fc0020124300607',
'auth0|62d545d870ffb9d5bbe73655',
'auth0|605b3694c6cfcd0069d58e4f',
'auth0|60b5fe4c87801b00682eeb3b',
'auth0|5efb201e27d4a00019e3275a',
'auth0|5efb4d2ed885ef00198aa150',
'auth0|605b3694edabe00070973ab7',
'auth0|5f859e735fbec4006e1aed63',
'auth0|632aeb3043b308fb35e81d64',
'auth0|6357922198a5aaaa10a4c9ef',
'auth0|611e86db9a31e70070fdafcf',
'auth0|60ab9019ff2d180069b83960',
'auth0|60ab902fa0a9760070d9c6a5',
'auth0|60ab901aff2d180069b8396a',
'auth0|6192310a5cf488006aa3efd7',
'auth0|615c6de05cd96b00702b8e74',
'auth0|635a63db976ccee6d46294c2',
'auth0|5dd7bc1555ecdf0e924b50d2',
'auth0|611a5343223c7f006b5c4255',
'auth0|60f4044621c3820069d5cd69',
'auth0|60f40447746fe00069c6f759',
'auth0|61f7bfb28d94e30069fe35d3',
'auth0|61f7bfc7c83df30070ecd970',
'auth0|6156c55025f2030068fe35c0',
'auth0|6156c556edcd510070e5132e',
'auth0|5f8ec72da0aa3000751d71d1',
'auth0|5fb4f121d1d5c2006a6193a9',
'auth0|5fb4f1038e249d0071e400d5',
'auth0|5fb4f13fcb996a007342a116',
'auth0|5fb4f13f6f9cd0006bfa23dd',
'auth0|5e3d695287dee90ed4b2ccc9',
'auth0|5e3d69b402dcc50e7e018571',
'auth0|5e3d69b602dcc50e7e01857a',
'auth0|5e3d69d787dee90ed4b2ce2c',
'auth0|5e3d69e802dcc50e7e018616',
'auth0|5e3d696987dee90ed4b2cd08',
'auth0|5e3d698287dee90ed4b2cd53',
'auth0|5e3d690d76a73e0ed404fd69',
'auth0|5e3d691687dee90ed4b2cc19',
'auth0|5e3d692f02dcc50e7e018427',
'auth0|5e3d698a87dee90ed4b2cd62',
'auth0|5e3d698b87dee90ed4b2cd6b',
'auth0|5e3d693687dee90ed4b2cc7a',
'auth0|5e3d694702dcc50e7e018456',
'auth0|5e3d694987dee90ed4b2ccb2',
'auth0|5e3d6a9587dee90ed4b2cf83',
'auth0|5e3d695087dee90ed4b2ccbd',
'auth0|5e3d696902dcc50e7e0184a1',
'auth0|5e4bfce3376a37110408dce0',
'auth0|5e3d697902dcc50e7e0184cf',
'auth0|5e3d698302dcc50e7e0184ef',
'auth0|5f85512823185c0068c12000',
'auth0|5f96938b8887080070fe3110',
'auth0|5eff2a45760044001398e12f',
'auth0|5eff2c77bb331300139d7c61',
'auth0|5f74290452cb550078467e16',
'auth0|5f742d0f52cb550078467f40',
'auth0|5fdb5010c510600072a97813',
'auth0|60f82458013ce9006a5cbde3',
'auth0|5fd10498c7f1360079fd780c',
'auth0|5fca040ce3b04b00769f7831',
'auth0|5fc7ac2cc7f1360079fa7b8f',
'auth0|5fc7ac2c63436700752b479e',
'auth0|5fc0d326537f9200707a0405',
'auth0|611b7320da5b00006835e057',
'auth0|5fb3860188e3230076c09fb9',
'auth0|5f92bcd1fe68c80068634adb',
'auth0|5de178f67cfdb60e36cdc614',
'auth0|5f7d843da6af640071dac300',
'auth0|5f76ec3a54fdf5006f1be099',
'auth0|613f037f6972a400703c4dd4',
'auth0|5de178f47cfdb60e36cdc610',
'auth0|5de127c77cfdb60e36cdc0d1',
'auth0|5de1123b2d75f50f860f5ed3',
'auth0|5de0f5ee7cfdb60e36cdbb2a',
'auth0|6177ac1442cfbe00690ff9cf',
'auth0|5ebcf53bc278d10c5edfc407',
'auth0|5de0f5ed7cfdb60e36cdbb29',
'auth0|627e2983ee9d7e006928be37',
'auth0|627e298396d75700690116b0',
'auth0|5de0d00639193e0f923f579e',
'auth0|6270f2772617cc0068bec908',
'auth0|62288b896ce9ba006859f95d',
'auth0|6229ccd92b66de00688c425f',
'auth0|6229ccd9d5a266007099c381',
'auth0|5de0d00439193e0f923f579d',
'auth0|5de0d00429f9cd0e3204168f',
'auth0|624ff8891d057e006ff478fb',
'auth0|5ddfbdbd29f9cd0e3204070f',
'auth0|5ddfbdbea64cae0fca50164e',
'auth0|5ddfbdbe2d75f50f860f47e7',
'auth0|624d554ebe56a000685c0938',
'auth0|5ddfbdbe29f9cd0e32040711',
'auth0|5de0025bb2658c0e34e9e608',
'auth0|5ddfbdc0b2658c0e34e9dd0d',
'auth0|624a9f56356357006fd7c1c8',
'auth0|622f0d3d523065007014ecc5',
'auth0|5ddfbdef39193e0f923f483b',
'auth0|5ddfbdf1a64cae0fca501668',
'auth0|5ddfd3b229f9cd0e32040a1d',
'auth0|6244029abf019f00704c291b',
'auth0|615ff5755d3d9d0070e93cf7',
'auth0|5f3e35a34ee503006d6d8e4b',
'auth0|5ddfd3b429f9cd0e32040a1f',
'auth0|6233045aac80850069cf8c6e',
'auth0|5ddfd3bba64cae0fca501981',
'auth0|614c6b6e217672007097005a',
'auth0|5ddfebed29f9cd0e32040def',
'auth0|5ddfebf639193e0f923f4ee4',
'auth0|5df113be00e5910edb3a9d93',
'auth0|5e257931734ea50ea40beb22',
'auth0|5e2579315115ea0eaa3140d5',
'auth0|5e3054d8928f210e9509ccac',
'auth0|61dd3d55439817006fc81e85',
'auth0|5de92ff24a253b0e87b29128',
'auth0|5de909fbf789630eafcb5c63',
'auth0|5de8e514b33e060ebfe19859',
'auth0|5de8e514ac696c0ebd13876c',
'auth0|5de8e514b33e060ebfe19857',
'auth0|5de832f8d1d0230ea313954f',
'auth0|5de7aec7b383690ee6b9cf95',
'auth0|5de67ee704b0480f09dd692b',
'auth0|5de65a5e39193e0f923fa2bb',
'auth0|62f51f0cba5df761961f2dff',
'auth0|5de65e862d75f50f860fa4cd',
'auth0|60b8cd99882ff3006fbbcc87',
'auth0|62f51f0d455c8487aefff30d',
'auth0|62d7b5e4789c8af838035376',
'auth0|5de62dd7a64cae0fca506a55',
'auth0|60c9ae96b86b450070b777ac',
'auth0|5de529457cfdb60e36cdeb3c',
'auth0|5de5294529f9cd0e32044b29',
'auth0|5de52944b2658c0e34ea2179',
'auth0|6049e8d349ca0700716a1aad',
'auth0|62ac72ec7d9acafdd49b2ea1',
'auth0|62a833e38001eaae26608b3a',
'auth0|60dd9a63306170006a1cfb60',
'auth0|61f8e8e03cb8e70068bfa197',
'auth0|61f8e8e156fc0100715ea673',
'auth0|60df12523aa25c006ac9add8',
'auth0|5de50e00b2658c0e34ea1b37',
'auth0|61a5e5ff21f2b9006fb94238',
'auth0|5de4f16529f9cd0e32044113',
'auth0|5fec4a5715ae2b00692030ae',
'auth0|5fe45063b2ac50006f718fa0',
'auth0|5deacb5f8fe66c0e87a02c19',
'auth0|5deacb92681d520e8b987da2',
'auth0|5ddff2a4a64cae0fca501db9',
'auth0|5ddff2a42d75f50f860f4f43',
'auth0|5ee0e7a32fd48d001390ddc9',
'auth0|5ec3caac407f280bedb3b899',
'auth0|5de110e339193e0f923f5eec',
'auth0|5de4be3f39193e0f923f7b1a',
'auth0|5de4be3fb2658c0e34ea0fac',
'auth0|5de4be402d75f50f860f7b29',
'auth0|5de4be41b2658c0e34ea0fae',
'auth0|5de4be47a64cae0fca50498d',
'auth0|5de5137329f9cd0e3204462f',
'auth0|5de5137439193e0f923f874e',
'auth0|5deacb0a8fe66c0e87a02c0d',
'auth0|5deacb0a8fe66c0e87a02c0e',
'auth0|6149da7010a650006897f648',
'auth0|6149da6a5f003c00697c75a5',
'auth0|6149da60217672007095f3ee',
'auth0|6149da4cb3583f00705e719e',
'auth0|624be9f720d2a40069c40541',
'auth0|616ebc715cd96b007031f64a',
'auth0|6275175d00955c006f8dd927',
'auth0|623b0a5c67d867007052e657',
'auth0|623b0a5bfbfbb10075fe1b88',
'auth0|623b0a52bfbb3300693d27fb',
'auth0|6151c411ed3a290068a9a8fe',
'auth0|6151c452af0c75006910a2e7',
'auth0|63105701114ffba8e247c71c',
'auth0|6151c433b424680069faf049',
'auth0|6151c426edcd510070e2ff10',
'auth0|5fe1e42db9aa4b00765d3823',
'auth0|5fe1e43cb9aa4b00765d3842',
'auth0|62c2c2785cf0f95fc2689e5a',
'auth0|6246bb2e20d2a40069be5f70',
'auth0|6253f161c168a1017d7dfb89',
'auth0|62aafe1b2e26304cde983dd0',
'auth0|625eadcb68be71006f486593',
'auth0|625ec97b68be71006f489c0d',
'auth0|5efb513a27d4a00019e35840',
'auth0|5efb510a38468b00141092b6',
'auth0|626a97491fb0a600692dc239',
'auth0|6273d60476db690070d50310',
'auth0|6273d2dc24ad07006927f1a0',
'auth0|626bb84dc00f38006face99f',
'auth0|626bbbca757b950069c4e081',
'auth0|62a72e2f0fcda14422075916',
'auth0|5fa52b2b096bb70076a5919d',
'auth0|62b2fbb393e69780fa22ae20',
'auth0|62b026078a8d8b40d4cfc423',
'auth0|62a73e5e053dd692e70a66f2',
'auth0|62a87bf426b69408cc142d9f',
'auth0|62a98f0fe615a332dab57dc3',
'auth0|626a59f01fb0a600692d4d8c',
'auth0|61d41ebef55f7c0069226386',
'auth0|603fb5929e6355006b2cb1f7',
'auth0|61ee74993179a0006a7dbeec',
'auth0|61ee749922cfd200690340a4',
'auth0|6241b2e467d86700705a5430',
'auth0|626a59f1fec11a006b83f2fe',
'auth0|625564e93a545200703bd431',
'auth0|60224e66d7e458006a449047',
'auth0|60224e56d7e458006a449022',
'auth0|60224e4f3649c20070a883d5',
'auth0|60537c8b9028b300701a1471',
'auth0|60899bea18b1710069bf2b91',
'auth0|60537c8c9028b300701a1473',
'auth0|60537bf37f519e00701052a1',
'auth0|60537bf58d120300684dc7d8',
'auth0|60537bd9780342006e8b6ffa',
'auth0|60537bdca9b06e006a7ea0e7',
'auth0|60537bf49028b300701a13b4',
'auth0|60537c8a9028b300701a1469',
'auth0|60537c2d7f519e0070105324',
'auth0|60537cb4779c9c006978a18a',
'auth0|60537bed8d120300684dc7cc',
'auth0|60537c80779c9c006978a166',
'auth0|60537c8cb68c0700703ff11f',
'auth0|60537c4e8d120300684dc856',
'auth0|60537cc0779c9c006978a1a0',
'auth0|60537c719028b300701a142d',
'auth0|60537c2b7f519e007010531a',
'auth0|60537c7c779c9c006978a15a',
'auth0|60537c8ca9b06e006a7ea15e',
'auth0|60537c1a780342006e8b7036',
'auth0|60537c87b68c0700703ff112',
'auth0|60537c73a9b06e006a7ea13d',
'auth0|60537c11779c9c006978a0ca',
'auth0|60537cd0780342006e8b70f9',
'auth0|60537bf88d120300684dc7e6',
'auth0|60537cab8d120300684dc8a8',
'auth0|60537c3a779c9c006978a10f',
'auth0|60537c5da9b06e006a7ea113',
'auth0|5d4020966a5b660f1ce963aa',
'auth0|601d39ae2f3444006a88b9e4',
'auth0|5feb607471f55b0069715ac5',
'auth0|5d4020156a5b660f1ce9633e',
'auth0|5fb104091c10ff006fb7fa74',
'auth0|5fa98e8d16d2c60069ed9e74',
'auth0|5f7df69b7e1a1300691fe4a6',
'auth0|5f6cb9ab5924f0006f06f7f8',
'auth0|5f63b0ec9cf180007e5d1f32',
'auth0|5f512c065935800067572a54',
'auth0|5f363bf929933c00673b52cb',
'auth0|5f2305ed73a8bb003d1f98dd',
'auth0|5f1171e37a703a001385404a',
'auth0|5e74b7883159cd0c5dce0462',
'auth0|5e6283ca9a31d30ce6a16cf2',
'auth0|5e2744b554d15a0ea7d0bf13',
'auth0|5e1e082e0ac6e60ea16014bc',
'auth0|5de4eab3a64cae0fca505057',
'auth0|5dce9d3873923f0f901c967f',
'auth0|5d92185f312f390dec7fddd3',
'auth0|5d80f695f1bd7e0e11145bf7',
'auth0|5d5294b43867a30ef9e17778',
'auth0|5d4021006a5b660f1ce963f8',
'auth0|5d4020f4f140c00f10594205',
'auth0|5d4020ee7f38520ed56563b3',
'auth0|5d4020ee7f38520ed56563b2',
'auth0|5d4020e86a5b660f1ce963e6',
'auth0|5d4020e76a5b660f1ce963e1',
'auth0|5d4020e16a5b660f1ce963df',
'auth0|5d4020e1f140c00f105941fd',
'auth0|5d4020d4f140c00f105941f6',
'auth0|5d4020ce6a5b660f1ce963d2',
'auth0|5d4020cef140c00f105941f4',
'auth0|5d4020ce6a5b660f1ce963d0',
'auth0|5d4020ce7f38520ed565639b',
'auth0|5d4020c8f140c00f105941ef',
'auth0|5d4020c26a5b660f1ce963c9',
'auth0|5d4020bb6a5b660f1ce963c6',
'auth0|5d4020af6a5b660f1ce963bc',
'auth0|5d4020af7f38520ed5656388',
'auth0|5d4020a97f38520ed5656387',
'auth0|5d4020a27f38520ed5656382',
'auth0|5d4020a26a5b660f1ce963b1',
'auth0|5d40209cf140c00f105941da',
'auth0|5d402096f140c00f105941d6',
'auth0|5d402096f140c00f105941d4',
'auth0|5d4020906a5b660f1ce963a8',
'auth0|5d402090f140c00f105941d0',
'auth0|5d402089f140c00f105941cb',
'auth0|5d4020827f38520ed565636c',
'auth0|5d40207cf140c00f105941c2',
'auth0|5d4020766a5b660f1ce96395',
'auth0|5d40206f6a5b660f1ce9638f',
'auth0|5d4020687f38520ed5656359',
'auth0|5d402062f140c00f105941b6',
'auth0|5d40205cf140c00f105941b2',
'auth0|5d40205b6a5b660f1ce9637e',
'auth0|5d40205bf140c00f105941b0',
'auth0|5d40204e6a5b660f1ce96376',
'auth0|5d40204d7f38520ed5656346',
'auth0|5d40203e6a5b660f1ce9636b',
'auth0|5d40203e6a5b660f1ce96369',
'auth0|5d40203d7f38520ed5656333',
'auth0|5d4020376a5b660f1ce96362',
'auth0|5d4020366a5b660f1ce9635f',
'auth0|5d4020356a5b660f1ce9635b',
'auth0|5d40202e6a5b660f1ce96352',
'auth0|5d40202d7f38520ed5656328',
'auth0|5d40202d7f38520ed5656327',
'auth0|5d402027f140c00f10594183',
'auth0|5d402026f140c00f1059417f',
'auth0|5d402026f140c00f1059417e',
'auth0|5d40201f7f38520ed5656320',
'auth0|5d40201ef140c00f10594175',
'auth0|5d40201df140c00f10594171',
'auth0|5d4020177f38520ed5656318',
'auth0|5d4020177f38520ed5656316',
'auth0|5d4020156a5b660f1ce96340',
'auth0|5d402015f140c00f1059416a',
'auth0|62c8433fb39f164d89ae357c',
'auth0|62c84340b4b1a098143f41e9',
'auth0|62c843423f5dc0798e4aa348',
'auth0|62c8433e8602e461c4c02576',
'auth0|62c8433f5360d5051769ad20',
'auth0|62c84342a76a6e3093266ffd',
'auth0|62c8433d8f6dc06e49c855ed',
'auth0|61781f0a5d3d9d0070f1a198',
'auth0|61781f0aaf0c7500691eabab',
'auth0|61781f01b424680069090951',
'auth0|61781f075cd96b007035628f',
'auth0|61781f045cd96b007035628a',
'auth0|61781f48af0c7500691eac0f',
'auth0|61781ef71c27890068349575',
'auth0|61781f4dedcd510070f10bfb',
'auth0|61781f5b5cd96b00703562d9',
'auth0|61781f10edcd510070f10bcc',
'auth0|614b04b45f003c00697ce76b',
'auth0|614b04acb3583f00705ee479',
'auth0|614b04a0de45d300692b494e',
'auth0|614b047f4df34700716ff81e',
'auth0|614b04792176720070966a64',
'auth0|614b0449efd51500694f73b0',
'auth0|614b0448b3583f00705ee41f',
'auth0|614b0442998133006866db86',
'auth0|614b041fb3583f00705ee3f1',
'auth0|614b041cb3583f00705ee3e8',
'auth0|614b03e810a6500068986849',
'auth0|614b00fd217672007096678e',
'auth0|614afbf74df34700716ff1c9',
'auth0|614afbf6998133006866d538',
'auth0|614afbd8efd51500694f6dad',
'auth0|614afbd8efd51500694f6dab',
'auth0|614afba610a6500068986229',
'auth0|614afa815f003c00697cdfc5',
'auth0|614afa44de45d300692b4101',
'auth0|60df7ecc9fc0f4006998428c',
'auth0|6024ffabd8ace400700581ed',
'auth0|614af9da4df34700716fef6f',
'auth0|61313b93a692f50070f5f7f9',
'auth0|60daef9b1ddc520070b5da62',
'auth0|60abbc43a0a7ac0071bd7a20',
'auth0|618aefa18ea222006b12d258',
'auth0|61407b3c34a256006b3c96a4',
'auth0|5fdb553d5edf28006849c0ad',
'auth0|614aed8a21767200709658f0',
'auth0|614aeeb253b183006acdba8b',
'auth0|614af9c653b183006acdc21c',
'auth0|614af95ade45d300692b3fe0',
'auth0|614af1f610a650006898591b',
'auth0|614aeec121767200709659e1',
'auth0|614aeebd5f003c00697cd7fd',
'auth0|614aeeb7b3583f00705ed55f',
'auth0|60912af161dd7400692ba168',
'auth0|614aeeb321767200709659c1',
'auth0|614b058c4df34700716ff960',
'auth0|614b058a4df34700716ff956',
'auth0|614b054b2176720070966b72',
'auth0|614b054b4df34700716ff906',
'auth0|614b0544998133006866dca8',
'auth0|614b0506de45d300692b49d9',
'auth0|62dfa1a0324ec18dcf26458d',
'auth0|5ef5e05a03240800196bc003',
'auth0|5ef5e04a739fe6001533c6ea',
'auth0|5ef5e0759f2a0f00136eb8c0',
'auth0|5ef5e03444c8140019f10bdc',
'auth0|5ef5e0614da4810013b300bd',
'auth0|5ef5e03403240800196bbfcc',
'auth0|5ef5e06483dfba001446a348',
'auth0|5ef5e0814da4810013b300f0',
'auth0|5ef5e08d83dfba001446a38d',
'auth0|6230561e5230650070169bfc',
'auth0|5f5782b3a23d540067d95e18',
'auth0|6253ea07740ed3017e30e3c9',
'auth0|60c88905b86b450070b6d885',
'auth0|60c88906f5e717006aa987c4',
'auth0|60fecf01aaa5a000690e1c59',
'auth0|60fe7488013ce9006a5e7edf',
'auth0|619e4d9a21f2b9006fb7c608',
'auth0|5ffc82003b6395006838c39d',
'auth0|61a782df35987700713276fa',
'auth0|61a782d309526900681f6dcb',
'auth0|61a782ce8cb2f9006a994e53',
'auth0|61a785e92063df0069204204',
'auth0|61a785ea971e42006fe64ca9',
'auth0|61a785f51f6a43006b705f3f',
'auth0|61a782128cb2f9006a994aa6',
'auth0|61a7824c3fc0730068656695',
'auth0|61a78282dabce400690de137',
'auth0|61a785e951d621006ece167f',
'auth0|61a785d23598770071328497',
'auth0|61a785d1803d250072bae833',
'auth0|61a785c23598770071328458',
'auth0|61a785bf7f1704006aa9d4b7',
'auth0|61a785b56773810070789719',
'auth0|61a785b22d8ee0006a87ba4a',
'auth0|61a785a31a6b3500698a1d64',
'auth0|61a78593803d250072bae6bf',
'auth0|61a78591803d250072bae6b3',
'auth0|61a782aa8cb2f9006a994dc7',
'auth0|61a7856cefb095006ac2ecbc',
'auth0|61a7856b2063df0069203f94',
'auth0|61a782bde96a6c0072d79867',
'auth0|61a782c07f1704006aa9c79d',
'auth0|61a782c34c3073006b331d8a',
'auth0|61a782c58cb2f9006a994e24',
'auth0|61a785683fc073006865748b',
'auth0|61a785684266e0006adac2e6',
'auth0|61a7855c6773810070789546',
'auth0|61a7854ee38646006cbda9c4',
'auth0|61a7854a064bb60071522885',
'auth0|61a78549971e42006fe64a29',
'auth0|61a78548803d250072bae525',
'auth0|61a785383fc0730068657332',
'auth0|61a78536efb095006ac2eb9d',
'auth0|61a78534b146eb0071623409',
'auth0|61a7852c51d621006ece1316',
'auth0|61a785266d1f32006b779b30',
'auth0|61a78525a4776c0069c27abd',
'auth0|61a7851b7f1704006aa9d259',
'auth0|61a784e63fc07300686571c6',
'auth0|61a782f2e96a6c0072d79919',
'auth0|61a782ef803d250072badb49',
'auth0|61a782ec2063df0069203472',
'auth0|61a782e3efb095006ac2e0e2',
'auth0|61a782e2efb095006ac2e0de',
'auth0|61a786623fc0730068657823',
'auth0|61a7864ba080bc006ae7196a',
'auth0|61a7864de7ee430078f786b9',
'auth0|6058af7653ab970069deb653',
'auth0|5dfa52a5de1a9e0e9bf208fd',
'auth0|5dfa52c5de1a9e0e9bf2091d',
'auth0|5dfa529e20f7c30e9baf63dc',
'auth0|5f6104e933f1cc007079ce34',
'auth0|5f6104e2b749130077add897',
'auth0|5f61048b4eca5f0077ba7881',
'auth0|5f6104ebfe9219006987d756',
'auth0|60bdee8c3b215a006714739d',
'auth0|62696a0299ac8b006f6d7c51',
'auth0|626969ffe70d0d006f5f1ed8',
'auth0|626969fe8f2f280069ff5a45',
'auth0|626969fde8fe23006a149ebd',
'auth0|62696b08e70d0d006f5f2063',
'auth0|62696a0462496a0069d4e3d6',
'auth0|62696a04a2bb89006878100c',
'auth0|62696a05a2bb89006878100d',
'auth0|62696a068456820071a3a9bd')) t
	left join dwh.employees e 
	on t."employeeId" = e."userId" 
		left join dwh."Companies" c 
		on t."companyId" = c."companyId") sub
where "rank" <3