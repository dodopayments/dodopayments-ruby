# Changelog

## 1.17.0 (2025-04-22)

Full Changelog: [v1.16.1...v1.17.0](https://github.com/dodopayments/dodopayments-ruby/compare/v1.16.1...v1.17.0)

### Features

* **api:** manual updates ([62a87c3](https://github.com/dodopayments/dodopayments-ruby/commit/62a87c3f8cdcfc59f5b93dc3dae02d0bb3712108))
* implement `#hash` for data containers ([34c3553](https://github.com/dodopayments/dodopayments-ruby/commit/34c35538d611b8b829f6e058531bf9f9c16a08d4))


### Chores

* documentation improvements ([71c417b](https://github.com/dodopayments/dodopayments-ruby/commit/71c417bc885d00ab6e31067378e4a10ca1449aea))
* explicitly mark apis public under `Internal` module ([b5c432b](https://github.com/dodopayments/dodopayments-ruby/commit/b5c432b32debc84016858af1c7f2ec88899410ab))
* **internal:** minor type annotation improvements ([0356338](https://github.com/dodopayments/dodopayments-ruby/commit/0356338332f349cf9aaea6c7c309254af6bc96cc))
* make sorbet enums easier to read ([2fb5092](https://github.com/dodopayments/dodopayments-ruby/commit/2fb509272af690159ad22df97abd1854b617af7f))
* simplify yard annotations by removing most `@!parse` directives ([d54d094](https://github.com/dodopayments/dodopayments-ruby/commit/d54d094c00557b2730477cf86c9d835f2c256aee))
* update README with recommended editor plugins ([b5f54c9](https://github.com/dodopayments/dodopayments-ruby/commit/b5f54c9799d10e1e8b6126bb9c91182f0e4db59d))
* use `@!method` instead of `@!parse` for virtual method type definitions ([d890ce6](https://github.com/dodopayments/dodopayments-ruby/commit/d890ce641419ae2b7eaf32bf15e1b9a8990da53b))

## 1.16.1 (2025-04-18)

Full Changelog: [v1.14.0...v1.16.1](https://github.com/dodopayments/dodopayments-ruby/compare/v1.14.0...v1.16.1)

### Features

* **api:** manual updates ([e2b23a9](https://github.com/dodopayments/dodopayments-ruby/commit/e2b23a9dd83f0c56039c71b49f23bccec9e1def6))


### Bug Fixes

* always send idempotency header when specified as a request option ([e666622](https://github.com/dodopayments/dodopayments-ruby/commit/e66662216d369a0553fe05943400645244270cbc))
* **client:** send correct HTTP path ([45d2036](https://github.com/dodopayments/dodopayments-ruby/commit/45d20360d35db21f868479dbb2186fdd2c09dfe3))
* restore ability to configure server environment as string during client construction ([684c1e2](https://github.com/dodopayments/dodopayments-ruby/commit/684c1e244a77b8af62ba1b47d9dd9511aa42be6c))


### Chores

* **internal:** contribute.md and contributor QoL improvements ([360a982](https://github.com/dodopayments/dodopayments-ruby/commit/360a982c582c253c26ecb4038c75d204e8afdd01))
* refine `#inspect` and `#to_s` for model classes ([04244f9](https://github.com/dodopayments/dodopayments-ruby/commit/04244f9a079f650ab56b712cc4087c313cd52278))

## 1.14.0 (2025-04-17)

Full Changelog: [v0.0.1-alpha.0...v1.14.0](https://github.com/dodopayments/dodopayments-ruby/compare/v0.0.1-alpha.0...v1.14.0)

### ⚠ BREAKING CHANGES

* bump min supported ruby version to 3.1 (oldest non-EOL)
* remove top level type aliases to relocated classes
* use tagged enums in sorbet type definitions
* support `for item in stream` style iteration on `Stream`s
* **model:** base model should recursively store coerced base models

### Features

* add reference links in yard ([c8112ba](https://github.com/dodopayments/dodopayments-ruby/commit/c8112ba33ce5537fcb656fb1972615acb0823df2))
* allow all valid `JSON` types to be encoded ([0e60330](https://github.com/dodopayments/dodopayments-ruby/commit/0e603309b24c57adcd565fb1d12affc5a08f661a))
* **api:** fixed license key pagination issues in openapi spec ([653b19c](https://github.com/dodopayments/dodopayments-ruby/commit/653b19c534d3954cee9cc1cf058a3a4eb5c71433))
* **api:** fixed openapi spec issues ([691e1e4](https://github.com/dodopayments/dodopayments-ruby/commit/691e1e49fc4dbe05c39f646ffc757af61667466b))
* **api:** manual updates ([1a32da1](https://github.com/dodopayments/dodopayments-ruby/commit/1a32da10c544bb0c44c502b648f7a16d2747dd63))
* **api:** manual updates ([f0b9884](https://github.com/dodopayments/dodopayments-ruby/commit/f0b98849b153d8daf323e69c9b87ab2b90f7af44))
* **api:** manual updates ([a680087](https://github.com/dodopayments/dodopayments-ruby/commit/a680087c8b50c3c7f28b58454a75e2a93e80ed7d))
* **api:** openapi spec updated ([31b931f](https://github.com/dodopayments/dodopayments-ruby/commit/31b931f84071a79e0112adc4437f9f9061fc3ce6))
* **api:** updated openapi spec ([1c3e4df](https://github.com/dodopayments/dodopayments-ruby/commit/1c3e4df6a91000598838dbb786594db7d8f3b1fd))
* **api:** updated openapispec to v1.10.1 ([e1f3743](https://github.com/dodopayments/dodopayments-ruby/commit/e1f374352cc65104320f68bac8d4478ff04ee106))
* **api:** updated stainless config ([bc00e20](https://github.com/dodopayments/dodopayments-ruby/commit/bc00e20f79d4b310b58e622f44ab7893e823351e))
* bump min supported ruby version to 3.1 (oldest non-EOL) ([c66807f](https://github.com/dodopayments/dodopayments-ruby/commit/c66807fbeecfbdeaa750deb3c6a2fcf83554340e))
* **client:** enable setting base URL from environment variable ([90a50f5](https://github.com/dodopayments/dodopayments-ruby/commit/90a50f5c94ce285e06310de00afafc5a1b4b53ee))
* consistently accept `AnyHash` types in parameter positions in sorbet ([c059ee7](https://github.com/dodopayments/dodopayments-ruby/commit/c059ee7583d5e4fb2a8c4d77070458c2793d70e8))
* implement `to_json` for base model ([f49536b](https://github.com/dodopayments/dodopayments-ruby/commit/f49536b1f9b236ccc5e9a26311ada0dd78af8cdf))
* **internal:** converter interface should recurse without schema ([311fe61](https://github.com/dodopayments/dodopayments-ruby/commit/311fe6124811bd70e9c3db85db028c51d40a6251))
* link response models to their methods in yard doc ([3983431](https://github.com/dodopayments/dodopayments-ruby/commit/39834314129a57a1927fc69a3b74fb512132850e))
* prevent tapioca from introspecting the gem internals ([c8092f5](https://github.com/dodopayments/dodopayments-ruby/commit/c8092f5d5d283d1fb3ba40632bf91f6ed4f399a4))
* remove top level type aliases to relocated classes ([6f906f2](https://github.com/dodopayments/dodopayments-ruby/commit/6f906f28a9d5dfcbee5d014b15fc4978c2138e5d))
* support `for item in stream` style iteration on `Stream`s ([d3e29e7](https://github.com/dodopayments/dodopayments-ruby/commit/d3e29e700214c4d36a167f98650fa1abf00c299a))
* support query, header, and body params that have identical names ([cd22aac](https://github.com/dodopayments/dodopayments-ruby/commit/cd22aacb0ba88b375132f3ea04e01e2024c784ad))
* support solargraph generics ([6173376](https://github.com/dodopayments/dodopayments-ruby/commit/61733766c21195d99d78c11f77d6e92bf4bdb2eb))
* use Pathname alongside raw IO handles for file uploads ([c3aba4a](https://github.com/dodopayments/dodopayments-ruby/commit/c3aba4a43a0e9f6c7e84e0c77123f54cb05fa36d))
* use tagged enums in sorbet type definitions ([3b11bb1](https://github.com/dodopayments/dodopayments-ruby/commit/3b11bb1787ef1d118197d70e27cb2306b3d675f2))


### Bug Fixes

* bad documentation url for gemdocs.org ([8fe7986](https://github.com/dodopayments/dodopayments-ruby/commit/8fe79864826485aa32c908b29fe0678942a1f164))
* converter should transform stringio into string where applicable ([fa77255](https://github.com/dodopayments/dodopayments-ruby/commit/fa7725542f6fa856262d343ccd0340a9c3436e49))
* **internal:** update release-please to use ruby strategy for README.md ([b683ef0](https://github.com/dodopayments/dodopayments-ruby/commit/b683ef092ffeb43c64c5e0eec4d429e629ed6cd4))
* label optional keyword arguments in *.rbs type definitions ([0a8efde](https://github.com/dodopayments/dodopayments-ruby/commit/0a8efdecb15fe09b55dfebfe03f4abef43e05528))
* **model:** base model should recursively store coerced base models ([7e3ec62](https://github.com/dodopayments/dodopayments-ruby/commit/7e3ec628b64c921afdecc5ed45a1a7bc905ee1ef))
* path interpolation template strings ([d5683b7](https://github.com/dodopayments/dodopayments-ruby/commit/d5683b7a6b2cb469327012d2553f019c2a24ef25))
* pre-release version string should match ruby, not semver conventions ([e7415da](https://github.com/dodopayments/dodopayments-ruby/commit/e7415da98e685ab504193d2827d863494c1f747e))
* raise connection error for errors that result from HTTP transports ([3834676](https://github.com/dodopayments/dodopayments-ruby/commit/38346761ee28f56d7daf487eb910ff9965e1bcb9))
* resolve tapioca derived sorbet errors ([bc47cc1](https://github.com/dodopayments/dodopayments-ruby/commit/bc47cc1acbe47f1e037e3e29fd2be98c3693d81f))
* switch to github compatible markdown engine ([4acafa8](https://github.com/dodopayments/dodopayments-ruby/commit/4acafa8745b44f81e9520a47b761ceb69ba31639))
* yard example tag formatting ([884ae9d](https://github.com/dodopayments/dodopayments-ruby/commit/884ae9d9c8107228211f94e10494cf76cadb5117))


### Chores

* `BaseModel` fields that are `BaseModel` typed should also accept `Hash` ([915e7e5](https://github.com/dodopayments/dodopayments-ruby/commit/915e7e50c6c6c991f7d3733b7842e1849255cfc8))
* add `[@yieldparam](https://github.com/yieldparam)` to yard doc ([764cd83](https://github.com/dodopayments/dodopayments-ruby/commit/764cd8326a3ac52090c77ad7e5ff9c54d2eedca2))
* add example directory ([9599dc0](https://github.com/dodopayments/dodopayments-ruby/commit/9599dc092fc1e61dc945aafe4ea056a7630f8545))
* add README docs for using solargraph when installing gem from git ([cc5afeb](https://github.com/dodopayments/dodopayments-ruby/commit/cc5afeb7168ff12bf8955aa594e5b51d8fe6f0ff))
* add type annotations for enum and union member listing methods ([933f18b](https://github.com/dodopayments/dodopayments-ruby/commit/933f18bd7e9e9a4f8a77992a8f3ce8fef6891247))
* always fold up method bodies in sorbet type definitions ([e838c12](https://github.com/dodopayments/dodopayments-ruby/commit/e838c12eaa9a85f91e52e4d84a7d8624aa68c68a))
* configure new SDK language ([fbf7c1f](https://github.com/dodopayments/dodopayments-ruby/commit/fbf7c1f3f1bb4cf298f8f5dd164afe1bc1bc2c72))
* demonstrate how to make undocumented requests in README ([15e30c1](https://github.com/dodopayments/dodopayments-ruby/commit/15e30c1fe450d03c0014458bf39488cdf82dc0ae))
* disable overloads in `*.rbs` definitions for readable LSP errors ([da0e8d5](https://github.com/dodopayments/dodopayments-ruby/commit/da0e8d5fac38f0af35105039338c45c2613d9145))
* disable unnecessary linter rules for sorbet manifests ([c76ef72](https://github.com/dodopayments/dodopayments-ruby/commit/c76ef72796447b336eee9c28408ba53444587c96))
* do not label modules as abstract ([ee3ebf5](https://github.com/dodopayments/dodopayments-ruby/commit/ee3ebf5d5ea0431cfdf48eecbc4fc07fcb366962))
* do not use literals for version in type definitions ([ad10ce8](https://github.com/dodopayments/dodopayments-ruby/commit/ad10ce8575b706df56a34ae4ff8009cf7926ab0d))
* document Client's concurrency capability ([58a127e](https://github.com/dodopayments/dodopayments-ruby/commit/58a127ea27a10f63e16846b4a71046c880fb6e9d))
* document LSP support in read me ([a47019f](https://github.com/dodopayments/dodopayments-ruby/commit/a47019f5c3fb191c195766f2bc9624db415647c0))
* ensure readme.md is bumped when release please updates versions ([c1755a1](https://github.com/dodopayments/dodopayments-ruby/commit/c1755a176241ac4db602e03caaca1c9454f890c2))
* extract error classes into own module ([89bad55](https://github.com/dodopayments/dodopayments-ruby/commit/89bad555e5ef74c3511829882de8aede53f951c5))
* fix misc rubocop errors ([87f611e](https://github.com/dodopayments/dodopayments-ruby/commit/87f611e853867c1f8fc8db8bae91db4825bcdc89))
* ignore some spurious linter warnings and formatting changes ([d606be8](https://github.com/dodopayments/dodopayments-ruby/commit/d606be8d1462240437777a0daef7478402876eec))
* improve yard docs readability ([27ae393](https://github.com/dodopayments/dodopayments-ruby/commit/27ae3930726557ed9d8405c159625fd29285b4b7))
* **internal:** add sorbet config for SDK local development ([0c7073d](https://github.com/dodopayments/dodopayments-ruby/commit/0c7073d3ac559b2005bcb010e5e6317e397b82b8))
* **internal:** codegen related update ([9c7c1d8](https://github.com/dodopayments/dodopayments-ruby/commit/9c7c1d8d55883683c1583aeddbb56324bbb15f16))
* **internal:** expand CI branch coverage ([57ab4ac](https://github.com/dodopayments/dodopayments-ruby/commit/57ab4ac4a2e82675cc4c363cb2a29e34557701dd))
* **internal:** minor refactoring of utils ([508daf1](https://github.com/dodopayments/dodopayments-ruby/commit/508daf14348624bedf613369b9ddcc54b4d4ca68))
* **internal:** misc small improvements ([85b3cc3](https://github.com/dodopayments/dodopayments-ruby/commit/85b3cc39646cc103b5eda8d0125408bb71c3f2bf))
* **internal:** more concise handling of parameter naming conflicts ([b09b0d6](https://github.com/dodopayments/dodopayments-ruby/commit/b09b0d644db3406c5dd7a3d7b21c215886036aa3))
* **internal:** protect SSE parsing pipeline from broken UTF-8 characters ([5bf6136](https://github.com/dodopayments/dodopayments-ruby/commit/5bf613630bfc54b72739f1a5abbc00e75ea3150e))
* **internal:** reduce CI branch coverage ([442e1cc](https://github.com/dodopayments/dodopayments-ruby/commit/442e1ccf6ce7c934b15bdb642d2521c208becade))
* **internal:** remove workflow ([b8bdca8](https://github.com/dodopayments/dodopayments-ruby/commit/b8bdca868dc35cc6fa16f652c67dc51f0c05c776))
* **internal:** rubocop rules ([aa67a5c](https://github.com/dodopayments/dodopayments-ruby/commit/aa67a5c1b509bce6fd1d4a48f940165c32afbd6b))
* **internal:** run rubocop linter in parallel ([4a79ab0](https://github.com/dodopayments/dodopayments-ruby/commit/4a79ab084ca7a1838319ac21c636887e38f8aacb))
* loosen const and integer coercion rules ([c8e265c](https://github.com/dodopayments/dodopayments-ruby/commit/c8e265c34a3a8d0638a5c1cf105ee2dafab57982))
* make client tests look prettier ([991a08d](https://github.com/dodopayments/dodopayments-ruby/commit/991a08df1c1d12f73f018e0a974723551950700c))
* mark non-inheritable SDK internal classes as final ([c2dc25e](https://github.com/dodopayments/dodopayments-ruby/commit/c2dc25ec48cb1132b7678c7cc71aa46f6335ac40))
* misc sdk polish ([5776dd3](https://github.com/dodopayments/dodopayments-ruby/commit/5776dd3a2eddfa0406d4405278209ec54cf57edd))
* more accurate type annotations for SDK internals ([7e903b3](https://github.com/dodopayments/dodopayments-ruby/commit/7e903b3b37fc068d1827e4d9e1468d72afab5223))
* more aggressive tapioca detection logic for skipping compiler introspection ([7ee8b2a](https://github.com/dodopayments/dodopayments-ruby/commit/7ee8b2a2c94e80b10f82709e49782d9d80260e83))
* more readable output when tests fail ([77fd8e7](https://github.com/dodopayments/dodopayments-ruby/commit/77fd8e7b35d54b91a965351f65afd6c1cf32d3bb))
* move private classes into internal module ([75c8b88](https://github.com/dodopayments/dodopayments-ruby/commit/75c8b8878ea25dc59f35bee89818616395787208))
* order client variables by "importance" ([2b96cdd](https://github.com/dodopayments/dodopayments-ruby/commit/2b96cdd10698c9ca811a19dcdfad72a4c08657e4))
* relax sorbet enum parameters to allow `String` in addition to `Symbol` ([51bd455](https://github.com/dodopayments/dodopayments-ruby/commit/51bd45578f2bf23387b73d2c84560840db5c6acc))
* relocate internal modules ([68aff7a](https://github.com/dodopayments/dodopayments-ruby/commit/68aff7a9737ec724af95860697ab8706970b5efb))
* remove unnecessary & confusing module ([727590d](https://github.com/dodopayments/dodopayments-ruby/commit/727590df76b9c011ea77adaf15e43407139bd063))
* rename confusing `Type::BooleanModel` to `Type::Boolean` ([71169db](https://github.com/dodopayments/dodopayments-ruby/commit/71169dbb04220c8bb6333d6f593874b01995117d))
* sdk client internal refactoring ([1c5f4d7](https://github.com/dodopayments/dodopayments-ruby/commit/1c5f4d7ed016ba10d9bdb24f3524c6cdcaef04cd))
* simplify internal utils ([799832e](https://github.com/dodopayments/dodopayments-ruby/commit/799832e558aa816cf14312e4279cd01385c66c1b))
* slightly more consistent type definition layout ([c43efe9](https://github.com/dodopayments/dodopayments-ruby/commit/c43efe948ab908714778e41b19f1bbf319c7f707))
* update readme ([fe8ff7a](https://github.com/dodopayments/dodopayments-ruby/commit/fe8ff7a92854c9ec119a55ca26c291a501a31e78))
* update SDK settings ([990f795](https://github.com/dodopayments/dodopayments-ruby/commit/990f795f48c1c6e8911fc72de58400652c6df806))
* update yard comment formatting ([3b01edb](https://github.com/dodopayments/dodopayments-ruby/commit/3b01edbe2622c31fe7c0de8b59aa68108042e1a8))
* use fully qualified name in sorbet README example ([259f1d3](https://github.com/dodopayments/dodopayments-ruby/commit/259f1d3b92f7d58d52ac793a3d2aebc489ae927e))
* use generics instead of overloading for sorbet type definitions ([768b452](https://github.com/dodopayments/dodopayments-ruby/commit/768b4523e5e072d6062d181f5fe2ae2a277aaf47))
* use multi-line formatting style for really long lines ([9f3d5db](https://github.com/dodopayments/dodopayments-ruby/commit/9f3d5db8c4e81cccae8803b7343ab40ca05fc3dd))
