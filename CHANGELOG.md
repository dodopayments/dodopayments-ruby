# Changelog

## 2.5.0 (2026-04-01)

Full Changelog: [v2.4.1...v2.5.0](https://github.com/dodopayments/dodopayments-ruby/compare/v2.4.1...v2.5.0)

### Features

* **api:** updated openapi spec to v1.93.0 ([108653e](https://github.com/dodopayments/dodopayments-ruby/commit/108653eb281d4b33283a7bc9bcaa7ce8434b077b))


### Bug Fixes

* align path encoding with RFC 3986 section 3.3 ([c77867d](https://github.com/dodopayments/dodopayments-ruby/commit/c77867d2f7a352bc7f6ede137e629fa0d6a37808))
* variable name typo ([93ee38e](https://github.com/dodopayments/dodopayments-ruby/commit/93ee38e03c625a03d6c716c93bae44bdd9682272))


### Chores

* **ci:** support opting out of skipping builds on metadata-only commits ([440f676](https://github.com/dodopayments/dodopayments-ruby/commit/440f6769cfae73ecd8414c50f35d724ca6c84ce0))
* **tests:** bump steady to v0.20.1 ([c0ca147](https://github.com/dodopayments/dodopayments-ruby/commit/c0ca147e996ceec20c39b2076153c6084048f9e6))
* **tests:** bump steady to v0.20.2 ([5d83036](https://github.com/dodopayments/dodopayments-ruby/commit/5d830369abcabf01109bdb3e9c21ea3c2aed894b))

## 2.4.1 (2026-03-27)

Full Changelog: [v2.4.0...v2.4.1](https://github.com/dodopayments/dodopayments-ruby/compare/v2.4.0...v2.4.1)

### Bug Fixes

* **internal:** correct multipart form field name encoding ([c8ce307](https://github.com/dodopayments/dodopayments-ruby/commit/c8ce307005fec7624c59fa411a186f9d0047d61c))

## 2.4.0 (2026-03-25)

Full Changelog: [v2.3.0...v2.4.0](https://github.com/dodopayments/dodopayments-ruby/compare/v2.3.0...v2.4.0)

### Features

* **api:** manual updates ([63ef98e](https://github.com/dodopayments/dodopayments-ruby/commit/63ef98ecd320d35628d2e1e3a7d494708023c55e))
* **api:** updated openapi spec to v1.92.3 ([e827af5](https://github.com/dodopayments/dodopayments-ruby/commit/e827af5ba14c9af4f6bf8cc911f4160f4a6ead93))

## 2.3.0 (2026-03-25)

Full Changelog: [v2.2.0...v2.3.0](https://github.com/dodopayments/dodopayments-ruby/compare/v2.2.0...v2.3.0)

### Features

* **api:** added cancel change plan endpoint ([c8748db](https://github.com/dodopayments/dodopayments-ruby/commit/c8748db3c02b945204bf7fab98c48361ff8615a7))
* **api:** updated openapi spec to 1.92.1 ([0355574](https://github.com/dodopayments/dodopayments-ruby/commit/035557423766f101ac5f35e62ba84cfbe0fbfbd5))


### Chores

* **ci:** skip lint on metadata-only changes ([ad5b48a](https://github.com/dodopayments/dodopayments-ruby/commit/ad5b48a9eebd480a0da063316bd0732b200ffa2a))
* **internal:** update gitignore ([249ca11](https://github.com/dodopayments/dodopayments-ruby/commit/249ca1127b6aa3913db257668ec8f2fb6d1d0c5c))
* **tests:** bump steady to v0.19.6 ([b3ff385](https://github.com/dodopayments/dodopayments-ruby/commit/b3ff385d9e3db267aeedfe9f27a294f0239f989c))
* **tests:** bump steady to v0.19.7 ([4f7229a](https://github.com/dodopayments/dodopayments-ruby/commit/4f7229ae821eb448e3efc1335a6a13da1b391156))

## 2.2.0 (2026-03-21)

Full Changelog: [v2.1.2...v2.2.0](https://github.com/dodopayments/dodopayments-ruby/compare/v2.1.2...v2.2.0)

### Features

* **client:** add webhook support ([8f3488c](https://github.com/dodopayments/dodopayments-ruby/commit/8f3488c1db4e3c8b58c9d9bb208448db009c4ad3))


### Chores

* **ci:** skip uploading artifacts on stainless-internal branches ([15197f0](https://github.com/dodopayments/dodopayments-ruby/commit/15197f0450856e33a2e6fa990ea4e0d0bc294022))
* **internal:** tweak CI branches ([dc3f7dc](https://github.com/dodopayments/dodopayments-ruby/commit/dc3f7dc0938f71b047786e11f56c4b51a1e0a776))
* **tests:** bump steady to v0.19.4 ([4247a60](https://github.com/dodopayments/dodopayments-ruby/commit/4247a60b34ccc131f2b906b03eb0f23841a18240))
* **tests:** bump steady to v0.19.5 ([7f4e044](https://github.com/dodopayments/dodopayments-ruby/commit/7f4e04431b6f274cccd98ef0d9bd322a1c73868a))


### Refactors

* **tests:** switch from prism to steady ([62bcdf6](https://github.com/dodopayments/dodopayments-ruby/commit/62bcdf666e0b382ba8dc83bb530cff79c31931bc))

## 2.1.2 (2026-03-06)

Full Changelog: [v2.1.1...v2.1.2](https://github.com/dodopayments/dodopayments-ruby/compare/v2.1.1...v2.1.2)

### Bug Fixes

* use :live_mode as default environment fallback instead of :production ([e3dabaf](https://github.com/dodopayments/dodopayments-ruby/commit/e3dabaf88b923805c29c4c57b5cbb22390eaae53))

## 2.1.1 (2026-03-06)

Full Changelog: [v2.1.0...v2.1.1](https://github.com/dodopayments/dodopayments-ruby/compare/v2.1.0...v2.1.1)

### Chores

* **internal:** codegen related update ([2c286c6](https://github.com/dodopayments/dodopayments-ruby/commit/2c286c64692841d5e41b6bb939c5715bb689a411))
* **test:** do not count install time for mock server timeout ([0e1eb6a](https://github.com/dodopayments/dodopayments-ruby/commit/0e1eb6afd24f4f2d290a75abde3afb2f0f54cdde))

## 2.1.0 (2026-03-05)

Full Changelog: [v2.0.0...v2.1.0](https://github.com/dodopayments/dodopayments-ruby/compare/v2.0.0...v2.1.0)

### Features

* **api:** updated openapi spec to v1.87.0 ([80979e6](https://github.com/dodopayments/dodopayments-ruby/commit/80979e652cba6b1ff1a3efaea1ff42b45ec26f41))

## 2.0.0 (2026-03-03)

Full Changelog: [v1.85.0...v2.0.0](https://github.com/dodopayments/dodopayments-ruby/compare/v1.85.0...v2.0.0)

### ⚠ BREAKING CHANGES

* bump min supported ruby version to 3.1 (oldest non-EOL)
* remove top level type aliases to relocated classes
* use tagged enums in sorbet type definitions
* support `for item in stream` style iteration on `Stream`s
* **model:** base model should recursively store coerced base models

### Features

* add reference links in yard ([c8112ba](https://github.com/dodopayments/dodopayments-ruby/commit/c8112ba33ce5537fcb656fb1972615acb0823df2))
* allow all valid `JSON` types to be encoded ([0e60330](https://github.com/dodopayments/dodopayments-ruby/commit/0e603309b24c57adcd565fb1d12affc5a08f661a))
* **api:** added addons ([6d29514](https://github.com/dodopayments/dodopayments-ruby/commit/6d295142298075a2744d75e501ee890d5427a613))
* **api:** added change plan api ([06485c5](https://github.com/dodopayments/dodopayments-ruby/commit/06485c576b59861095081813dcf535dba8fcfd07))
* **api:** added more models ([4429a15](https://github.com/dodopayments/dodopayments-ruby/commit/4429a153ba8bdf2f3aa4f05f799ee48cbbbab126))
* **api:** added typescript sdk for migration and updated org info ([489108b](https://github.com/dodopayments/dodopayments-ruby/commit/489108bfe4baf4a353c0da3dce815d212bfdb090))
* **api:** added unwrap functions for webhooks ([0e30a51](https://github.com/dodopayments/dodopayments-ruby/commit/0e30a51eba44226b6294b5decd49d3a0c7336817))
* **api:** added update payment method and updated openapi spec to v1.60.0 ([2c3c8ae](https://github.com/dodopayments/dodopayments-ruby/commit/2c3c8aea82f9c23f6658acf0cf5e91a46ffd4525))
* **api:** fixed api key schema to bearer ([8bf9667](https://github.com/dodopayments/dodopayments-ruby/commit/8bf966735a616fcbcc917f0c28ba5082d62e421f))
* **api:** fixed license key pagination issues in openapi spec ([653b19c](https://github.com/dodopayments/dodopayments-ruby/commit/653b19c534d3954cee9cc1cf058a3a4eb5c71433))
* **api:** fixed openapi spec issues ([691e1e4](https://github.com/dodopayments/dodopayments-ruby/commit/691e1e49fc4dbe05c39f646ffc757af61667466b))
* **api:** manual updates ([2141274](https://github.com/dodopayments/dodopayments-ruby/commit/2141274ccbc22584fcfc0ca5277e9aefd8bbe145))
* **api:** manual updates ([49eccb8](https://github.com/dodopayments/dodopayments-ruby/commit/49eccb84f1566b2b6edaa8c39cfd7ce3d86819a6))
* **api:** manual updates ([6182b9a](https://github.com/dodopayments/dodopayments-ruby/commit/6182b9a4e3461fa6443ad97bab90b8f20a667760))
* **api:** manual updates ([7daa7e8](https://github.com/dodopayments/dodopayments-ruby/commit/7daa7e896881826dac08a394e87cabde631d51e2))
* **api:** manual updates ([1f8be64](https://github.com/dodopayments/dodopayments-ruby/commit/1f8be64bb2ec602b611c264ad91b4aa369c44ac2))
* **api:** manual updates ([83aca9d](https://github.com/dodopayments/dodopayments-ruby/commit/83aca9de3cd7b0793c10a183f2a4b65fe56e8cef))
* **api:** manual updates ([5705689](https://github.com/dodopayments/dodopayments-ruby/commit/5705689fd510749a717d4554087e2bbd60d580df))
* **api:** manual updates ([50d98ad](https://github.com/dodopayments/dodopayments-ruby/commit/50d98ad0a454affb6ec69f438f24839c5212e83b))
* **api:** manual updates ([947a59a](https://github.com/dodopayments/dodopayments-ruby/commit/947a59a614333bb6d39217ac0b11c782363ec70b))
* **api:** manual updates ([a9a01b1](https://github.com/dodopayments/dodopayments-ruby/commit/a9a01b1f814809be64e5fc9207fdc6035e10d009))
* **api:** manual updates ([0119f42](https://github.com/dodopayments/dodopayments-ruby/commit/0119f42a79e78801eaa1d4e06b9b40c1f1b07dd7))
* **api:** manual updates ([823e758](https://github.com/dodopayments/dodopayments-ruby/commit/823e7583f2b76f1297961bbc84bb76ffea6ff7c3))
* **api:** manual updates ([0ffd1d5](https://github.com/dodopayments/dodopayments-ruby/commit/0ffd1d5f131e3557162092cfcbf450ebb162e99c))
* **api:** manual updates ([1a32da1](https://github.com/dodopayments/dodopayments-ruby/commit/1a32da10c544bb0c44c502b648f7a16d2747dd63))
* **api:** manual updates ([f0b9884](https://github.com/dodopayments/dodopayments-ruby/commit/f0b98849b153d8daf323e69c9b87ab2b90f7af44))
* **api:** manual updates ([a680087](https://github.com/dodopayments/dodopayments-ruby/commit/a680087c8b50c3c7f28b58454a75e2a93e80ed7d))
* **api:** openapi spec updated ([31b931f](https://github.com/dodopayments/dodopayments-ruby/commit/31b931f84071a79e0112adc4437f9f9061fc3ce6))
* **api:** update openapi spec to v1.73.0 ([6bcd390](https://github.com/dodopayments/dodopayments-ruby/commit/6bcd390343ed9c3825daa272dab1da72e9dd28be))
* **api:** updated code for v1.49.0 ([c97f843](https://github.com/dodopayments/dodopayments-ruby/commit/c97f843bc46614912a773918f02a4c259177e3ad))
* **api:** updated example ([2868d55](https://github.com/dodopayments/dodopayments-ruby/commit/2868d551c55eae61ca7550dbbea08310c72e2b2d))
* **api:** updated openapi spec ([6afbaa1](https://github.com/dodopayments/dodopayments-ruby/commit/6afbaa1e9d5f534f3f665fb179c54271e206197c))
* **api:** updated openapi spec ([3992544](https://github.com/dodopayments/dodopayments-ruby/commit/3992544db65d3663124b02aa3bbb9675546d55e9))
* **api:** updated openapi spec ([1c3e4df](https://github.com/dodopayments/dodopayments-ruby/commit/1c3e4df6a91000598838dbb786594db7d8f3b1fd))
* **api:** updated openapi spec for v1.78.1 ([ca4badc](https://github.com/dodopayments/dodopayments-ruby/commit/ca4badc441145470b772c33afb1489a44324ef73))
* **api:** updated openapi spec to 1.67.0 ([5f5d546](https://github.com/dodopayments/dodopayments-ruby/commit/5f5d5468c55f7ea8f3c9435e5802c7644a1d46b7))
* **api:** updated openapi spec to v1.51.0 and added checkout sessions ([aa2e032](https://github.com/dodopayments/dodopayments-ruby/commit/aa2e0325739776d9ee554eedcfa0e92c905d0367))
* **api:** updated openapi spec to v1.52.4 ([e3d9359](https://github.com/dodopayments/dodopayments-ruby/commit/e3d93593da35aa3ca1b1b3e414d9079b5c5d293f))
* **api:** updated openapi spec to v1.53.2 with customer credits. ([083a066](https://github.com/dodopayments/dodopayments-ruby/commit/083a066e83930f76c9d43ef27f1b7bee266ff44c))
* **api:** updated openapi spec to v1.55.0 ([e914764](https://github.com/dodopayments/dodopayments-ruby/commit/e9147649280d2d4cd5c88a1c04d57641bc036964))
* **api:** updated openapi spec to v1.56.3 ([626f6cd](https://github.com/dodopayments/dodopayments-ruby/commit/626f6cdb199b722ac7db1b058f38746a27b2b9f9))
* **api:** updated openapi spec to v1.61.5 ([aec38e4](https://github.com/dodopayments/dodopayments-ruby/commit/aec38e43c9a1ca86192d5de38f1d206de00c88c2))
* **api:** updated openapi spec to v1.66.1 ([35b5610](https://github.com/dodopayments/dodopayments-ruby/commit/35b5610c44265981fe30c4d31033dbdaba832342))
* **api:** updated openapi spec to v1.68.4 ([f2f7a5f](https://github.com/dodopayments/dodopayments-ruby/commit/f2f7a5f93555582146b0ba723598cf828fd19caf))
* **api:** updated openapi spec to v1.70.0 ([4fcbed2](https://github.com/dodopayments/dodopayments-ruby/commit/4fcbed2e6a75ce855ec1bc5fd2df00a5fed6af47))
* **api:** updated openapi spec to v1.74.0 ([7f9eebc](https://github.com/dodopayments/dodopayments-ruby/commit/7f9eebcf163a687648670f1bff2843bff682c8e3))
* **api:** updated openapi spec to v1.75.0 ([7857e53](https://github.com/dodopayments/dodopayments-ruby/commit/7857e53f436efde2c71a5ac270a3d82e2840af35))
* **api:** updated openapi spec to v1.81.0 ([f39831a](https://github.com/dodopayments/dodopayments-ruby/commit/f39831a7c2a75cc30b751882c07c038afe5bac71))
* **api:** updated openapi spec to v1.84.0 ([8c23bba](https://github.com/dodopayments/dodopayments-ruby/commit/8c23bba22c7f3ccbf48a8d017546f88e4e1895b7))
* **api:** updated openapispec to v1.10.1 ([e1f3743](https://github.com/dodopayments/dodopayments-ruby/commit/e1f374352cc65104320f68bac8d4478ff04ee106))
* **api:** updated readme example ([474d767](https://github.com/dodopayments/dodopayments-ruby/commit/474d767e16ad6fb650649a4b97ff6914798255fe))
* **api:** updated readme example ([893aefd](https://github.com/dodopayments/dodopayments-ruby/commit/893aefd61fdb025607943402f3eb5e1643c5b7dc))
* **api:** updated stainless config ([bc00e20](https://github.com/dodopayments/dodopayments-ruby/commit/bc00e20f79d4b310b58e622f44ab7893e823351e))
* **api:** updated to openapi spec v1.56.0 ([64694fb](https://github.com/dodopayments/dodopayments-ruby/commit/64694fb58a294d3f46a94ed535532e7575a56cbb))
* **api:** updated to openapi spec v1.86.0 ([cf231f8](https://github.com/dodopayments/dodopayments-ruby/commit/cf231f82c910c2d282b8492edcf797062988afa5))
* **api:** updates for openapi spec v1.55.7 ([e4bb38c](https://github.com/dodopayments/dodopayments-ruby/commit/e4bb38cf92973a23061d918ed64145159f8925a4))
* bump min supported ruby version to 3.1 (oldest non-EOL) ([c66807f](https://github.com/dodopayments/dodopayments-ruby/commit/c66807fbeecfbdeaa750deb3c6a2fcf83554340e))
* **client:** enable setting base URL from environment variable ([200d8af](https://github.com/dodopayments/dodopayments-ruby/commit/200d8af9620aa8dd2f4680120dcb8b38505580d6))
* consistently accept `AnyHash` types in parameter positions in sorbet ([c059ee7](https://github.com/dodopayments/dodopayments-ruby/commit/c059ee7583d5e4fb2a8c4d77070458c2793d70e8))
* expose response headers for both streams and errors ([d563c51](https://github.com/dodopayments/dodopayments-ruby/commit/d563c51cf65c6e39f86efdd09921c2d806c58bc5))
* handle thread interrupts in the core HTTP client ([47fb552](https://github.com/dodopayments/dodopayments-ruby/commit/47fb552d838d56c867e70ef85797aa97f51b53dd))
* implement `#hash` for data containers ([5b2231f](https://github.com/dodopayments/dodopayments-ruby/commit/5b2231f3aba80e6dbc81f707ab700226e5187540))
* implement `to_json` for base model ([f49536b](https://github.com/dodopayments/dodopayments-ruby/commit/f49536b1f9b236ccc5e9a26311ada0dd78af8cdf))
* **internal:** converter interface should recurse without schema ([311fe61](https://github.com/dodopayments/dodopayments-ruby/commit/311fe6124811bd70e9c3db85db028c51d40a6251))
* link response models to their methods in yard doc ([3983431](https://github.com/dodopayments/dodopayments-ruby/commit/39834314129a57a1927fc69a3b74fb512132850e))
* prevent tapioca from introspecting the gem internals ([c8092f5](https://github.com/dodopayments/dodopayments-ruby/commit/c8092f5d5d283d1fb3ba40632bf91f6ed4f399a4))
* remove top level type aliases to relocated classes ([6f906f2](https://github.com/dodopayments/dodopayments-ruby/commit/6f906f28a9d5dfcbee5d014b15fc4978c2138e5d))
* support `for item in stream` style iteration on `Stream`s ([d3e29e7](https://github.com/dodopayments/dodopayments-ruby/commit/d3e29e700214c4d36a167f98650fa1abf00c299a))
* support query, header, and body params that have identical names ([cd22aac](https://github.com/dodopayments/dodopayments-ruby/commit/cd22aacb0ba88b375132f3ea04e01e2024c784ad))
* support solargraph generics ([6173376](https://github.com/dodopayments/dodopayments-ruby/commit/61733766c21195d99d78c11f77d6e92bf4bdb2eb))
* support specifying content-type with FilePart class ([6b0b818](https://github.com/dodopayments/dodopayments-ruby/commit/6b0b818d6b3bf77592e40fcf627c6b1ef59be2d1))
* support webmock for testing ([8a0a4fb](https://github.com/dodopayments/dodopayments-ruby/commit/8a0a4fbcc1a9c5b255a26f2b15d3d9fd03e89ab5))
* updated openapi spec and added model and API functions for Usage Based Billing ([52c39e0](https://github.com/dodopayments/dodopayments-ruby/commit/52c39e0183bae637270fba991325e4106293d4b3))
* use Pathname alongside raw IO handles for file uploads ([c3aba4a](https://github.com/dodopayments/dodopayments-ruby/commit/c3aba4a43a0e9f6c7e84e0c77123f54cb05fa36d))
* use tagged enums in sorbet type definitions ([3b11bb1](https://github.com/dodopayments/dodopayments-ruby/commit/3b11bb1787ef1d118197d70e27cb2306b3d675f2))


### Bug Fixes

* absolutely qualified uris should always override the default ([5d4bb4e](https://github.com/dodopayments/dodopayments-ruby/commit/5d4bb4e6e48b5d21867412a3afce1388ecc99fc7))
* always send `filename=...` for multipart requests where a file is expected ([6169b9b](https://github.com/dodopayments/dodopayments-ruby/commit/6169b9bec49c46321ab629eb09a13224e6757894))
* always send idempotency header when specified as a request option ([aab61bc](https://github.com/dodopayments/dodopayments-ruby/commit/aab61bc66903ae92c611aab90114b0bf9ac5884c))
* bad documentation url for gemdocs.org ([8fe7986](https://github.com/dodopayments/dodopayments-ruby/commit/8fe79864826485aa32c908b29fe0678942a1f164))
* better thread safety via early initializing SSL store during HTTP client creation ([ce5600b](https://github.com/dodopayments/dodopayments-ruby/commit/ce5600b693a26023715321a0fcd9c5fa63d0a2ac))
* bump sorbet version and fix new type errors from the breaking change ([de1cef9](https://github.com/dodopayments/dodopayments-ruby/commit/de1cef9c2bde2aa0679c2bea738d1eff9050cfe8))
* calling `break` out of streams should be instantaneous ([e6930c8](https://github.com/dodopayments/dodopayments-ruby/commit/e6930c86daeb47b569797caa69d46946020098d3))
* **client:** always add content-length to post body, even when empty ([8a56334](https://github.com/dodopayments/dodopayments-ruby/commit/8a563349f95dc6457611808d35a70ae3e8c71f2d))
* **client:** loosen json header parsing ([84e3779](https://github.com/dodopayments/dodopayments-ruby/commit/84e377910377206d3fb2454a5dc4bc177bd8c44c))
* **client:** send correct HTTP path ([0d37b17](https://github.com/dodopayments/dodopayments-ruby/commit/0d37b1781b1cae981f046b3df361dd5e474509e2))
* converter should transform stringio into string where applicable ([fa77255](https://github.com/dodopayments/dodopayments-ruby/commit/fa7725542f6fa856262d343ccd0340a9c3436e49))
* coroutine leaks from connection pool ([5286357](https://github.com/dodopayments/dodopayments-ruby/commit/5286357844bc467be31b0581297437f1744f313f))
* **docs:** fix mcp installation instructions for remote servers ([f209cc0](https://github.com/dodopayments/dodopayments-ruby/commit/f209cc0840cac923a4afb9b760eef6a62f354431))
* ensure gem release is unaffected by renaming ([83c0ab0](https://github.com/dodopayments/dodopayments-ruby/commit/83c0ab0cde7876ccdcb448118f38385fa9d2fa68))
* **internal:** fix formatting script for macos ([d44d729](https://github.com/dodopayments/dodopayments-ruby/commit/d44d7293ce824c7cb16803cdbb89bb2830eb04c4))
* **internal:** remove duplicate imports ([9f5ba6c](https://github.com/dodopayments/dodopayments-ruby/commit/9f5ba6c2952d88400e64f9ebf27d669c4055d8fc))
* **internal:** update release-please to use ruby strategy for README.md ([b683ef0](https://github.com/dodopayments/dodopayments-ruby/commit/b683ef092ffeb43c64c5e0eec4d429e629ed6cd4))
* issue where json.parse errors when receiving HTTP 204 with nobody ([71adcdc](https://github.com/dodopayments/dodopayments-ruby/commit/71adcdc11ac2e81764d4c1bb591ea2c9978918f8))
* label optional keyword arguments in *.rbs type definitions ([0a8efde](https://github.com/dodopayments/dodopayments-ruby/commit/0a8efdecb15fe09b55dfebfe03f4abef43e05528))
* make a typo for `FilePart.content` ([af24ffc](https://github.com/dodopayments/dodopayments-ruby/commit/af24ffcb8218c2e39f5136abe53351fdcb74e635))
* **model:** base model should recursively store coerced base models ([7e3ec62](https://github.com/dodopayments/dodopayments-ruby/commit/7e3ec628b64c921afdecc5ed45a1a7bc905ee1ef))
* path interpolation template strings ([d5683b7](https://github.com/dodopayments/dodopayments-ruby/commit/d5683b7a6b2cb469327012d2553f019c2a24ef25))
* pre-release version string should match ruby, not semver conventions ([e7415da](https://github.com/dodopayments/dodopayments-ruby/commit/e7415da98e685ab504193d2827d863494c1f747e))
* properly mock time in ruby ci tests ([3ea2a0d](https://github.com/dodopayments/dodopayments-ruby/commit/3ea2a0d6f2fc09521b075f725fac3d335ae97bb0))
* raise connection error for errors that result from HTTP transports ([3834676](https://github.com/dodopayments/dodopayments-ruby/commit/38346761ee28f56d7daf487eb910ff9965e1bcb9))
* re-exported array and map models should typecheck in steep ([d171dd4](https://github.com/dodopayments/dodopayments-ruby/commit/d171dd4f41f8706c25e3dab58046e813cee966d4))
* resolve tapioca derived sorbet errors ([bc47cc1](https://github.com/dodopayments/dodopayments-ruby/commit/bc47cc1acbe47f1e037e3e29fd2be98c3693d81f))
* restore ability to configure server environment as string during client construction ([184b186](https://github.com/dodopayments/dodopayments-ruby/commit/184b186d51411d3373e54fad4e5226bd6e4241f5))
* shorten multipart boundary sep to less than RFC specificed max length ([98b379b](https://github.com/dodopayments/dodopayments-ruby/commit/98b379b5a0c1fad181fe3e89459b6dd8a531eb94))
* should not reuse buffers for `IO.copy_stream` interop ([b8baa35](https://github.com/dodopayments/dodopayments-ruby/commit/b8baa35262752b506c9c3029f1ce41b18db6f045))
* switch to github compatible markdown engine ([4acafa8](https://github.com/dodopayments/dodopayments-ruby/commit/4acafa8745b44f81e9520a47b761ceb69ba31639))
* yard example tag formatting ([884ae9d](https://github.com/dodopayments/dodopayments-ruby/commit/884ae9d9c8107228211f94e10494cf76cadb5117))


### Performance Improvements

* faster code formatting ([8f5e413](https://github.com/dodopayments/dodopayments-ruby/commit/8f5e413c73524aa2ba73140b587fa75790c29ebc))


### Chores

* `BaseModel` fields that are `BaseModel` typed should also accept `Hash` ([915e7e5](https://github.com/dodopayments/dodopayments-ruby/commit/915e7e50c6c6c991f7d3733b7842e1849255cfc8))
* accept all nd-json mimetype variants ([282cbb9](https://github.com/dodopayments/dodopayments-ruby/commit/282cbb9e1cb13018e6c9858001a267b44ae17771))
* add `[@yieldparam](https://github.com/yieldparam)` to yard doc ([764cd83](https://github.com/dodopayments/dodopayments-ruby/commit/764cd8326a3ac52090c77ad7e5ff9c54d2eedca2))
* add example directory ([9599dc0](https://github.com/dodopayments/dodopayments-ruby/commit/9599dc092fc1e61dc945aafe4ea056a7630f8545))
* add generator safe directory ([6925d9e](https://github.com/dodopayments/dodopayments-ruby/commit/6925d9e7464661902c5abadd1e10c43d30d166fd))
* add json schema comment for rubocop.yml ([bf58077](https://github.com/dodopayments/dodopayments-ruby/commit/bf5807710ba93f948b4425804ea5fe9ed859fa0f))
* add README docs for using solargraph when installing gem from git ([cc5afeb](https://github.com/dodopayments/dodopayments-ruby/commit/cc5afeb7168ff12bf8955aa594e5b51d8fe6f0ff))
* add type annotations for enum and union member listing methods ([933f18b](https://github.com/dodopayments/dodopayments-ruby/commit/933f18bd7e9e9a4f8a77992a8f3ce8fef6891247))
* allow fast-format to use bsd sed as well ([7da98a7](https://github.com/dodopayments/dodopayments-ruby/commit/7da98a7d5924257f7dcec54286a7db5728091f16))
* always check if current page is empty in `next_page?` ([8151945](https://github.com/dodopayments/dodopayments-ruby/commit/8151945f643a0eda5c2f7c5f2f820594e24f8d3b))
* always fold up method bodies in sorbet type definitions ([e838c12](https://github.com/dodopayments/dodopayments-ruby/commit/e838c12eaa9a85f91e52e4d84a7d8624aa68c68a))
* broadly detect json family of content-type headers ([8af10b9](https://github.com/dodopayments/dodopayments-ruby/commit/8af10b9ca2d106ff6079145efc33fa5a20d6fc5e))
* bump dependency version and update sorbet types ([194872c](https://github.com/dodopayments/dodopayments-ruby/commit/194872ca8a1918dfd212dc0a1e0a9afeda1d9b25))
* **ci:** add build step ([8b3e31e](https://github.com/dodopayments/dodopayments-ruby/commit/8b3e31e070dd3cd8ed6ff5d1b459e85bc198e49d))
* **ci:** add timeout thresholds for CI jobs ([6b2324e](https://github.com/dodopayments/dodopayments-ruby/commit/6b2324e00467e3ba31d1729f322fb769c5394e6a))
* **ci:** only use depot for staging repos ([adc65c4](https://github.com/dodopayments/dodopayments-ruby/commit/adc65c48fe043531e0b12735f59113318f95de3e))
* configure new SDK language ([fbf7c1f](https://github.com/dodopayments/dodopayments-ruby/commit/fbf7c1f3f1bb4cf298f8f5dd164afe1bc1bc2c72))
* demonstrate how to make undocumented requests in README ([15e30c1](https://github.com/dodopayments/dodopayments-ruby/commit/15e30c1fe450d03c0014458bf39488cdf82dc0ae))
* disable overloads in `*.rbs` definitions for readable LSP errors ([da0e8d5](https://github.com/dodopayments/dodopayments-ruby/commit/da0e8d5fac38f0af35105039338c45c2613d9145))
* disable unnecessary linter rules for sorbet manifests ([c76ef72](https://github.com/dodopayments/dodopayments-ruby/commit/c76ef72796447b336eee9c28408ba53444587c96))
* do not install brew dependencies in ./scripts/bootstrap by default ([f5efab0](https://github.com/dodopayments/dodopayments-ruby/commit/f5efab0b0ba3c3390f6812f4d1397641c2c045b3))
* do not label modules as abstract ([ee3ebf5](https://github.com/dodopayments/dodopayments-ruby/commit/ee3ebf5d5ea0431cfdf48eecbc4fc07fcb366962))
* do not use literals for version in type definitions ([ad10ce8](https://github.com/dodopayments/dodopayments-ruby/commit/ad10ce8575b706df56a34ae4ff8009cf7926ab0d))
* **docs:** remove www prefix ([9457927](https://github.com/dodopayments/dodopayments-ruby/commit/94579275f0ff94427953079ad865fdf9663a2923))
* document Client's concurrency capability ([58a127e](https://github.com/dodopayments/dodopayments-ruby/commit/58a127ea27a10f63e16846b4a71046c880fb6e9d))
* document LSP support in read me ([a47019f](https://github.com/dodopayments/dodopayments-ruby/commit/a47019f5c3fb191c195766f2bc9624db415647c0))
* documentation improvements ([7c1ca7a](https://github.com/dodopayments/dodopayments-ruby/commit/7c1ca7aa4f82584d3c4f89d69791ce867eb093b4))
* ensure readme.md is bumped when release please updates versions ([c1755a1](https://github.com/dodopayments/dodopayments-ruby/commit/c1755a176241ac4db602e03caaca1c9454f890c2))
* explicitly mark apis public under `Internal` module ([dc1c17b](https://github.com/dodopayments/dodopayments-ruby/commit/dc1c17be77d2bc1b0a4332c455199f5db26a47e6))
* explicitly require "base64" gem ([7e524c3](https://github.com/dodopayments/dodopayments-ruby/commit/7e524c31a95344581939439e2bbc7481543c439f))
* extract error classes into own module ([89bad55](https://github.com/dodopayments/dodopayments-ruby/commit/89bad555e5ef74c3511829882de8aede53f951c5))
* fix misc rubocop errors ([87f611e](https://github.com/dodopayments/dodopayments-ruby/commit/87f611e853867c1f8fc8db8bae91db4825bcdc89))
* ignore linter error for tests having large collections ([0ce86cf](https://github.com/dodopayments/dodopayments-ruby/commit/0ce86cf5a6418ddba749fc2231ee8ef47fe6f25d))
* ignore some spurious linter warnings and formatting changes ([d606be8](https://github.com/dodopayments/dodopayments-ruby/commit/d606be8d1462240437777a0daef7478402876eec))
* improve example values ([af9737c](https://github.com/dodopayments/dodopayments-ruby/commit/af9737c2e781e2f428ae69e88e0c9053ba0a018b))
* improve yard docs readability ([27ae393](https://github.com/dodopayments/dodopayments-ruby/commit/27ae3930726557ed9d8405c159625fd29285b4b7))
* **internal:** add sorbet config for SDK local development ([0c7073d](https://github.com/dodopayments/dodopayments-ruby/commit/0c7073d3ac559b2005bcb010e5e6317e397b82b8))
* **internal:** annotate request options with type aliases in sorbet ([ef9de86](https://github.com/dodopayments/dodopayments-ruby/commit/ef9de86cb6c37ef9486142baa2360334b8afd8f9))
* **internal:** codegen related update ([de72849](https://github.com/dodopayments/dodopayments-ruby/commit/de72849c70dc910fd8ade8dcdc822b6876415600))
* **internal:** codegen related update ([2ee3063](https://github.com/dodopayments/dodopayments-ruby/commit/2ee3063553979bce76598ae13706f54c42d9d65c))
* **internal:** codegen related update ([04b3973](https://github.com/dodopayments/dodopayments-ruby/commit/04b3973929484317dd187e8b7833c69a6afaf3a1))
* **internal:** codegen related update ([c8b13ca](https://github.com/dodopayments/dodopayments-ruby/commit/c8b13caad2127c6c46c5a81a0653d3fe7df18754))
* **internal:** codegen related update ([d3a61a4](https://github.com/dodopayments/dodopayments-ruby/commit/d3a61a416b95b731c08c2a5dbccf397b7c033437))
* **internal:** codegen related update ([37ac705](https://github.com/dodopayments/dodopayments-ruby/commit/37ac705c96dd862f68bd228c79f5b6fac85f09e2))
* **internal:** codegen related update ([7622434](https://github.com/dodopayments/dodopayments-ruby/commit/76224342d1d6457b5f3e952d4ef5a0fb4693e3bf))
* **internal:** codegen related update ([4b014a4](https://github.com/dodopayments/dodopayments-ruby/commit/4b014a45d6a41865ab79640f9aac71f3e96b2f40))
* **internal:** contribute.md and contributor QoL improvements ([faa951b](https://github.com/dodopayments/dodopayments-ruby/commit/faa951bda7f9bf602bddadd2897c626a2535e67e))
* **internal:** expand CI branch coverage ([57ab4ac](https://github.com/dodopayments/dodopayments-ruby/commit/57ab4ac4a2e82675cc4c363cb2a29e34557701dd))
* **internal:** improve response envelope unwrap functionality ([bd020e6](https://github.com/dodopayments/dodopayments-ruby/commit/bd020e6c47279426d937cc92f7778c178ba0e3b6))
* **internal:** minor refactoring of utils ([508daf1](https://github.com/dodopayments/dodopayments-ruby/commit/508daf14348624bedf613369b9ddcc54b4d4ca68))
* **internal:** minor type annotation improvements ([6e93642](https://github.com/dodopayments/dodopayments-ruby/commit/6e93642e7fe871d82bf61e42e19e0da2852613d4))
* **internal:** misc small improvements ([85b3cc3](https://github.com/dodopayments/dodopayments-ruby/commit/85b3cc39646cc103b5eda8d0125408bb71c3f2bf))
* **internal:** more concise handling of parameter naming conflicts ([b09b0d6](https://github.com/dodopayments/dodopayments-ruby/commit/b09b0d644db3406c5dd7a3d7b21c215886036aa3))
* **internal:** mostly README touch ups ([951c9ff](https://github.com/dodopayments/dodopayments-ruby/commit/951c9ffa2d054847edebd4c304c7f119e9185fc2))
* **internal:** protect SSE parsing pipeline from broken UTF-8 characters ([fd968b5](https://github.com/dodopayments/dodopayments-ruby/commit/fd968b5ed82938685d02b63503b2452d8019ac47))
* **internal:** reduce CI branch coverage ([442e1cc](https://github.com/dodopayments/dodopayments-ruby/commit/442e1ccf6ce7c934b15bdb642d2521c208becade))
* **internal:** remove unnecessary `rbi/lib` folder ([9f1568e](https://github.com/dodopayments/dodopayments-ruby/commit/9f1568e32d2085b50453c19995b608d351c69539))
* **internal:** remove workflow ([b8bdca8](https://github.com/dodopayments/dodopayments-ruby/commit/b8bdca868dc35cc6fa16f652c67dc51f0c05c776))
* **internal:** rubocop rules ([aa67a5c](https://github.com/dodopayments/dodopayments-ruby/commit/aa67a5c1b509bce6fd1d4a48f940165c32afbd6b))
* **internal:** run rubocop linter in parallel ([4a79ab0](https://github.com/dodopayments/dodopayments-ruby/commit/4a79ab084ca7a1838319ac21c636887e38f8aacb))
* **internal:** update `actions/checkout` version ([adf1e5e](https://github.com/dodopayments/dodopayments-ruby/commit/adf1e5e83e0cbbc01167161219e666b176d572ae))
* loosen const and integer coercion rules ([c8e265c](https://github.com/dodopayments/dodopayments-ruby/commit/c8e265c34a3a8d0638a5c1cf105ee2dafab57982))
* loosen rubocop rules that don't always make sense ([1fc8852](https://github.com/dodopayments/dodopayments-ruby/commit/1fc8852623eea594202ac41aa8d84dd671e5fd43))
* make client tests look prettier ([991a08d](https://github.com/dodopayments/dodopayments-ruby/commit/991a08df1c1d12f73f018e0a974723551950700c))
* make sorbet enums easier to read ([372e04c](https://github.com/dodopayments/dodopayments-ruby/commit/372e04caef9aa18483f20bb8cce40070c0c923de))
* mark non-inheritable SDK internal classes as final ([c2dc25e](https://github.com/dodopayments/dodopayments-ruby/commit/c2dc25ec48cb1132b7678c7cc71aa46f6335ac40))
* migrate away from deprecated `JSON#fast_generate` ([2408e07](https://github.com/dodopayments/dodopayments-ruby/commit/2408e07b26c4244ac2afd7201ecfbe61a402e62d))
* misc sdk polish ([5776dd3](https://github.com/dodopayments/dodopayments-ruby/commit/5776dd3a2eddfa0406d4405278209ec54cf57edd))
* more accurate type annotations and aliases ([bf44d64](https://github.com/dodopayments/dodopayments-ruby/commit/bf44d64b3e01b29f373a88b8a982773a1377a2a8))
* more accurate type annotations for SDK internals ([7e903b3](https://github.com/dodopayments/dodopayments-ruby/commit/7e903b3b37fc068d1827e4d9e1468d72afab5223))
* more aggressive tapioca detection logic for skipping compiler introspection ([7ee8b2a](https://github.com/dodopayments/dodopayments-ruby/commit/7ee8b2a2c94e80b10f82709e49782d9d80260e83))
* more readable output when tests fail ([77fd8e7](https://github.com/dodopayments/dodopayments-ruby/commit/77fd8e7b35d54b91a965351f65afd6c1cf32d3bb))
* move `cgi` into dependencies for ruby 4 ([4695906](https://github.com/dodopayments/dodopayments-ruby/commit/46959066824ae7478dd34708a36ed3cb3f50e7cc))
* move private classes into internal module ([75c8b88](https://github.com/dodopayments/dodopayments-ruby/commit/75c8b8878ea25dc59f35bee89818616395787208))
* order client variables by "importance" ([2b96cdd](https://github.com/dodopayments/dodopayments-ruby/commit/2b96cdd10698c9ca811a19dcdfad72a4c08657e4))
* re-export top level models under library namespace ([4e6afda](https://github.com/dodopayments/dodopayments-ruby/commit/4e6afda581eefa80e150d7c9fa440407e81d9378))
* refine `#inspect` and `#to_s` for model classes ([14cfc95](https://github.com/dodopayments/dodopayments-ruby/commit/14cfc957593d8bf9f1e1e09f95a07eb9a1cb07b8))
* relax sorbet enum parameters to allow `String` in addition to `Symbol` ([51bd455](https://github.com/dodopayments/dodopayments-ruby/commit/51bd45578f2bf23387b73d2c84560840db5c6acc))
* relocate internal modules ([68aff7a](https://github.com/dodopayments/dodopayments-ruby/commit/68aff7a9737ec724af95860697ab8706970b5efb))
* remove Gemfile.lock during bootstrap ([f1eccc7](https://github.com/dodopayments/dodopayments-ruby/commit/f1eccc75277114b50980245674aa8228e18ef166))
* remove unnecessary & confusing module ([727590d](https://github.com/dodopayments/dodopayments-ruby/commit/727590df76b9c011ea77adaf15e43407139bd063))
* rename confusing `Type::BooleanModel` to `Type::Boolean` ([71169db](https://github.com/dodopayments/dodopayments-ruby/commit/71169dbb04220c8bb6333d6f593874b01995117d))
* revert ignoring Gemfile.lock ([23de062](https://github.com/dodopayments/dodopayments-ruby/commit/23de062230bfeba7aa3080136bb63bcac551c39d))
* sdk client internal refactoring ([1c5f4d7](https://github.com/dodopayments/dodopayments-ruby/commit/1c5f4d7ed016ba10d9bdb24f3524c6cdcaef04cd))
* show truncated parameter docs in yard ([0a313c0](https://github.com/dodopayments/dodopayments-ruby/commit/0a313c068901d9474348fb484cd4b34b13d30915))
* simplify internal utils ([799832e](https://github.com/dodopayments/dodopayments-ruby/commit/799832e558aa816cf14312e4279cd01385c66c1b))
* simplify yard annotations by removing most `@!parse` directives ([dc949dd](https://github.com/dodopayments/dodopayments-ruby/commit/dc949dd935f43417d384bceb52220cd69c16a283))
* slightly more consistent type definition layout ([c43efe9](https://github.com/dodopayments/dodopayments-ruby/commit/c43efe948ab908714778e41b19f1bbf319c7f707))
* sync repo ([1506a07](https://github.com/dodopayments/dodopayments-ruby/commit/1506a070998cb16fae67c664c6cc6fa96d32cf79))
* update mock server docs ([ffeefff](https://github.com/dodopayments/dodopayments-ruby/commit/ffeefff8af6454b5d60e195100c8f31367db9cf0))
* update readme ([fe8ff7a](https://github.com/dodopayments/dodopayments-ruby/commit/fe8ff7a92854c9ec119a55ca26c291a501a31e78))
* update README with recommended editor plugins ([72adaa5](https://github.com/dodopayments/dodopayments-ruby/commit/72adaa58b737eb95a2a7a08d456419eec6c887bd))
* update SDK settings ([990f795](https://github.com/dodopayments/dodopayments-ruby/commit/990f795f48c1c6e8911fc72de58400652c6df806))
* update yard comment formatting ([3b01edb](https://github.com/dodopayments/dodopayments-ruby/commit/3b01edbe2622c31fe7c0de8b59aa68108042e1a8))
* use `@!method` instead of `@!parse` for virtual method type definitions ([a95e23a](https://github.com/dodopayments/dodopayments-ruby/commit/a95e23a9e8dbdc6f7452ae4f57094ef85349f62c))
* use fully qualified name in sorbet README example ([259f1d3](https://github.com/dodopayments/dodopayments-ruby/commit/259f1d3b92f7d58d52ac793a3d2aebc489ae927e))
* use generics instead of overloading for sorbet type definitions ([768b452](https://github.com/dodopayments/dodopayments-ruby/commit/768b4523e5e072d6062d181f5fe2ae2a277aaf47))
* use multi-line formatting style for really long lines ([9f3d5db](https://github.com/dodopayments/dodopayments-ruby/commit/9f3d5db8c4e81cccae8803b7343ab40ca05fc3dd))
* validate request option coercion correctness ([3f208de](https://github.com/dodopayments/dodopayments-ruby/commit/3f208de8e3829d6bfef9bd051c498ff81613cf75))


### Documentation

* illustrate environmental defaults for auth variables ([84de4bd](https://github.com/dodopayments/dodopayments-ruby/commit/84de4bdfa02196ff504a5765b2d60379d41068f7))
* prominently feature MCP server setup in root SDK readmes ([c5fed17](https://github.com/dodopayments/dodopayments-ruby/commit/c5fed177a666f04c83cb321f306b198c9b6baa95))
* **readme:** fix typo ([af6f8f6](https://github.com/dodopayments/dodopayments-ruby/commit/af6f8f6a62d92b2ca6d69796a3d945c60dab8b1b))

## 1.85.0 (2026-03-01)

Full Changelog: [v1.84.1...v1.85.0](https://github.com/dodopayments/dodopayments-ruby/compare/v1.84.1...v1.85.0)

### Features

* **api:** added more models ([1483b4c](https://github.com/dodopayments/dodopayments-ruby/commit/1483b4c9389478bac237bad635642bf89dc8c233))
* **api:** updated to openapi spec v1.86.0 ([a478029](https://github.com/dodopayments/dodopayments-ruby/commit/a4780294c799864b3cb66f8386bfc4841ee260b7))

## 1.84.1 (2026-02-27)

Full Changelog: [v1.84.0...v1.84.1](https://github.com/dodopayments/dodopayments-ruby/compare/v1.84.0...v1.84.1)

### Bug Fixes

* properly mock time in ruby ci tests ([1317060](https://github.com/dodopayments/dodopayments-ruby/commit/1317060af172f68ed0ca7dc1ca7d994ab1673d2a))

## 1.84.0 (2026-02-20)

Full Changelog: [v1.81.1...v1.84.0](https://github.com/dodopayments/dodopayments-ruby/compare/v1.81.1...v1.84.0)

### Features

* **api:** updated openapi spec to v1.84.0 ([8090496](https://github.com/dodopayments/dodopayments-ruby/commit/8090496dbdf1f5f637069e829e212308f9ecfae7))


### Chores

* update mock server docs ([c8d153d](https://github.com/dodopayments/dodopayments-ruby/commit/c8d153dffd723e3a43c5b04e534599a316ceee84))

## 1.81.1 (2026-02-07)

Full Changelog: [v1.81.0...v1.81.1](https://github.com/dodopayments/dodopayments-ruby/compare/v1.81.0...v1.81.1)

### Bug Fixes

* **client:** loosen json header parsing ([c89ca91](https://github.com/dodopayments/dodopayments-ruby/commit/c89ca911568c15c34c55801fd959a528fc2c29af))

## 1.81.0 (2026-02-06)

Full Changelog: [v1.78.0...v1.81.0](https://github.com/dodopayments/dodopayments-ruby/compare/v1.78.0...v1.81.0)

### Features

* **api:** updated openapi spec to v1.81.0 ([5352bb7](https://github.com/dodopayments/dodopayments-ruby/commit/5352bb779fd2126cd087e9b13b36ba1e44f8859f))


### Bug Fixes

* **client:** always add content-length to post body, even when empty ([79b027e](https://github.com/dodopayments/dodopayments-ruby/commit/79b027e2ad0b8290d6918ecaa1cb364c94caa6dc))


### Chores

* **docs:** remove www prefix ([594f8da](https://github.com/dodopayments/dodopayments-ruby/commit/594f8da91e1dc3e4d7d185109126b31902a9d420))

## 1.78.0 (2026-02-02)

Full Changelog: [v1.75.1...v1.78.0](https://github.com/dodopayments/dodopayments-ruby/compare/v1.75.1...v1.78.0)

### Features

* **api:** updated openapi spec for v1.78.1 ([471758d](https://github.com/dodopayments/dodopayments-ruby/commit/471758df73569a5435e0a8ef612a65071cc6cd67))

## 1.75.1 (2026-01-29)

Full Changelog: [v1.75.0...v1.75.1](https://github.com/dodopayments/dodopayments-ruby/compare/v1.75.0...v1.75.1)

### Bug Fixes

* **docs:** fix mcp installation instructions for remote servers ([c9e9571](https://github.com/dodopayments/dodopayments-ruby/commit/c9e95715e2e6e4e2c7e1549b53629cb46aed4eaf))

## 1.75.0 (2026-01-23)

Full Changelog: [v1.74.0...v1.75.0](https://github.com/dodopayments/dodopayments-ruby/compare/v1.74.0...v1.75.0)

### Features

* **api:** updated openapi spec to v1.75.0 ([9f94a5f](https://github.com/dodopayments/dodopayments-ruby/commit/9f94a5fff085e5aa884aa88ee8a6d53014183693))


### Bug Fixes

* **internal:** remove duplicate imports ([b44a35a](https://github.com/dodopayments/dodopayments-ruby/commit/b44a35af1f773a566b21082917ecc9a76e9a956b))

## 1.74.0 (2026-01-21)

Full Changelog: [v1.73.0...v1.74.0](https://github.com/dodopayments/dodopayments-ruby/compare/v1.73.0...v1.74.0)

### Features

* **api:** updated openapi spec to v1.74.0 ([81bd146](https://github.com/dodopayments/dodopayments-ruby/commit/81bd146a912f98174fed1ef0ad741f585d78a322))

## 1.73.0 (2026-01-20)

Full Changelog: [v1.71.1...v1.73.0](https://github.com/dodopayments/dodopayments-ruby/compare/v1.71.1...v1.73.0)

### Features

* **api:** update openapi spec to v1.73.0 ([24b7c76](https://github.com/dodopayments/dodopayments-ruby/commit/24b7c763b9f8845d138ca8d286bce058831e27a9))


### Chores

* **internal:** update `actions/checkout` version ([7ea17a7](https://github.com/dodopayments/dodopayments-ruby/commit/7ea17a7662be22901a344ddbe9b2b7788c08f781))

## 1.71.1 (2026-01-10)

Full Changelog: [v1.71.0...v1.71.1](https://github.com/dodopayments/dodopayments-ruby/compare/v1.71.0...v1.71.1)

### Chores

* move `cgi` into dependencies for ruby 4 ([b3e8e28](https://github.com/dodopayments/dodopayments-ruby/commit/b3e8e28eae1b3ca06b9ab2f7d8551316617ee2f5))

## 1.71.0 (2026-01-07)

Full Changelog: [v1.70.0...v1.71.0](https://github.com/dodopayments/dodopayments-ruby/compare/v1.70.0...v1.71.0)

### Features

* **api:** updated openapi spec to v1.70.0 ([846fbe5](https://github.com/dodopayments/dodopayments-ruby/commit/846fbe5526e6eb1d96fdf6fc5221b6380873e7e5))


### Chores

* **internal:** codegen related update ([fcd68a1](https://github.com/dodopayments/dodopayments-ruby/commit/fcd68a18cca0b993a328a341b4db85e8c78eb78c))


### Documentation

* prominently feature MCP server setup in root SDK readmes ([8936186](https://github.com/dodopayments/dodopayments-ruby/commit/8936186536d0a906dc064904972006f7769eb6fd))

## 1.70.0 (2025-12-23)

Full Changelog: [v1.69.0...v1.70.0](https://github.com/dodopayments/dodopayments-ruby/compare/v1.69.0...v1.70.0)

### Features

* **api:** manual updates ([83dc45a](https://github.com/dodopayments/dodopayments-ruby/commit/83dc45ae1eae356bc67e34c4eedb01390ff621e5))

## 1.69.0 (2025-12-23)

Full Changelog: [v1.68.0...v1.69.0](https://github.com/dodopayments/dodopayments-ruby/compare/v1.68.0...v1.69.0)

### Features

* **api:** manual updates ([702b110](https://github.com/dodopayments/dodopayments-ruby/commit/702b110a222abca719163c70b74ac5be66bee79f))

## 1.68.0 (2025-12-19)

Full Changelog: [v1.67.2...v1.68.0](https://github.com/dodopayments/dodopayments-ruby/compare/v1.67.2...v1.68.0)

### Features

* **api:** updated openapi spec to v1.68.4 ([668ee05](https://github.com/dodopayments/dodopayments-ruby/commit/668ee05b1a74d277f8cf208a29f987d11f549ee0))

## 1.67.2 (2025-12-19)

Full Changelog: [v1.67.1...v1.67.2](https://github.com/dodopayments/dodopayments-ruby/compare/v1.67.1...v1.67.2)

### Bug Fixes

* issue where json.parse errors when receiving HTTP 204 with nobody ([10ab033](https://github.com/dodopayments/dodopayments-ruby/commit/10ab033abb73135f79aef03972ad0c45253b2d83))

## 1.67.1 (2025-12-17)

Full Changelog: [v1.67.0...v1.67.1](https://github.com/dodopayments/dodopayments-ruby/compare/v1.67.0...v1.67.1)

### Bug Fixes

* calling `break` out of streams should be instantaneous ([b0d7935](https://github.com/dodopayments/dodopayments-ruby/commit/b0d79352157047c5fda04b1e5c524c07b5c5516b))

## 1.67.0 (2025-12-16)

Full Changelog: [v1.66.1...v1.67.0](https://github.com/dodopayments/dodopayments-ruby/compare/v1.66.1...v1.67.0)

### Features

* **api:** updated openapi spec to 1.67.0 ([30b278e](https://github.com/dodopayments/dodopayments-ruby/commit/30b278ee529c922bf14a538e6b6da52056a420c2))

## 1.66.1 (2025-12-12)

Full Changelog: [v1.66.0...v1.66.1](https://github.com/dodopayments/dodopayments-ruby/compare/v1.66.0...v1.66.1)

### Features

* **api:** manual updates ([33e1723](https://github.com/dodopayments/dodopayments-ruby/commit/33e1723674596d62368d8aafbfcdcf4fb994de56))

## 1.66.0 (2025-12-08)

Full Changelog: [v1.61.7...v1.66.0](https://github.com/dodopayments/dodopayments-ruby/compare/v1.61.7...v1.66.0)

### Features

* **api:** updated openapi spec to v1.66.1 ([b7f15c5](https://github.com/dodopayments/dodopayments-ruby/commit/b7f15c5801d7d6e2523a11e5ca2d0c807c202e89))

## 1.61.7 (2025-12-03)

Full Changelog: [v1.61.6...v1.61.7](https://github.com/dodopayments/dodopayments-ruby/compare/v1.61.6...v1.61.7)

### Chores

* **internal:** codegen related update ([bb2f57b](https://github.com/dodopayments/dodopayments-ruby/commit/bb2f57bef749534bcbe159f2e5bf351510c7c4f7))

## 1.61.6 (2025-11-21)

Full Changelog: [v1.61.5...v1.61.6](https://github.com/dodopayments/dodopayments-ruby/compare/v1.61.5...v1.61.6)

### Chores

* explicitly require "base64" gem ([0463bca](https://github.com/dodopayments/dodopayments-ruby/commit/0463bcabdf87e5e3e853c9322ab84592db77d352))

## 1.61.5 (2025-11-17)

Full Changelog: [v1.60.0...v1.61.5](https://github.com/dodopayments/dodopayments-ruby/compare/v1.60.0...v1.61.5)

### Features

* **api:** updated openapi spec to v1.61.5 ([a0dec2d](https://github.com/dodopayments/dodopayments-ruby/commit/a0dec2de23324bd4391bbdecab3d0c627f9c8faf))

## 1.60.0 (2025-11-14)

Full Changelog: [v1.56.4...v1.60.0](https://github.com/dodopayments/dodopayments-ruby/compare/v1.56.4...v1.60.0)

### Features

* **api:** added update payment method and updated openapi spec to v1.60.0 ([b81478b](https://github.com/dodopayments/dodopayments-ruby/commit/b81478b3e319f4ce09de51766a37688e0cc24b08))

## 1.56.4 (2025-11-05)

Full Changelog: [v1.56.3...v1.56.4](https://github.com/dodopayments/dodopayments-ruby/compare/v1.56.3...v1.56.4)

### Bug Fixes

* better thread safety via early initializing SSL store during HTTP client creation ([931e1ee](https://github.com/dodopayments/dodopayments-ruby/commit/931e1eeb8a5cda3c0359ca8dd58621ac10f2aa5a))


### Chores

* bump dependency version and update sorbet types ([af5f49a](https://github.com/dodopayments/dodopayments-ruby/commit/af5f49a7f1d0ed6de5f230e6a9c93ef9ea0d6a38))

## 1.56.3 (2025-10-29)

Full Changelog: [v1.56.2...v1.56.3](https://github.com/dodopayments/dodopayments-ruby/compare/v1.56.2...v1.56.3)

### Features

* **api:** updated openapi spec to v1.56.3 ([b4f67da](https://github.com/dodopayments/dodopayments-ruby/commit/b4f67dac21364d32b4d4f8de5a14a237747edf1a))

## 1.56.2 (2025-10-27)

Full Changelog: [v1.56.0...v1.56.2](https://github.com/dodopayments/dodopayments-ruby/compare/v1.56.0...v1.56.2)

### Features

* **api:** updated to openapi spec v1.56.0 ([e734ebf](https://github.com/dodopayments/dodopayments-ruby/commit/e734ebfd1718a0cfda521a01c71dc0b7faf4a1cd))

## 1.56.0 (2025-10-25)

Full Changelog: [v1.55.8...v1.56.0](https://github.com/dodopayments/dodopayments-ruby/compare/v1.55.8...v1.56.0)

### Features

* **api:** added unwrap functions for webhooks ([3aab01b](https://github.com/dodopayments/dodopayments-ruby/commit/3aab01bd934c029ae0d533b2b28aec933f1c58bf))

## 1.55.8 (2025-10-24)

Full Changelog: [v1.55.7...v1.55.8](https://github.com/dodopayments/dodopayments-ruby/compare/v1.55.7...v1.55.8)

### Features

* handle thread interrupts in the core HTTP client ([704ad81](https://github.com/dodopayments/dodopayments-ruby/commit/704ad81101e265fcf099bc397643a650476672ce))

## 1.55.7 (2025-10-17)

Full Changelog: [v1.54.0...v1.55.7](https://github.com/dodopayments/dodopayments-ruby/compare/v1.54.0...v1.55.7)

### Features

* **api:** updates for openapi spec v1.55.7 ([7bcc59e](https://github.com/dodopayments/dodopayments-ruby/commit/7bcc59eeedcb804bd8e83205e78c04c785089f63))

## 1.54.0 (2025-10-16)

Full Changelog: [v1.53.5...v1.54.0](https://github.com/dodopayments/dodopayments-ruby/compare/v1.53.5...v1.54.0)

### Features

* **api:** updated openapi spec to v1.55.0 ([4bb71ad](https://github.com/dodopayments/dodopayments-ruby/commit/4bb71ad9b3cebdec22722b969684c4dd266035c9))


### Bug Fixes

* absolutely qualified uris should always override the default ([0a9a011](https://github.com/dodopayments/dodopayments-ruby/commit/0a9a011c532bfba6f37d29ebab9fb08589941c6b))
* should not reuse buffers for `IO.copy_stream` interop ([780663d](https://github.com/dodopayments/dodopayments-ruby/commit/780663d4dad0150f25766d54af480058f31bd57e))


### Chores

* ignore linter error for tests having large collections ([28e86ee](https://github.com/dodopayments/dodopayments-ruby/commit/28e86ee01088492878c56d50a3a57d8bf9001aa3))

## 1.53.5 (2025-10-01)

Full Changelog: [v1.53.4...v1.53.5](https://github.com/dodopayments/dodopayments-ruby/compare/v1.53.4...v1.53.5)

### Bug Fixes

* always send `filename=...` for multipart requests where a file is expected ([2521920](https://github.com/dodopayments/dodopayments-ruby/commit/25219203e67ac52d02c0464ddbe2a1edfa584b55))
* coroutine leaks from connection pool ([105ced3](https://github.com/dodopayments/dodopayments-ruby/commit/105ced3287dc953a6bb13cc6442ab74f5b72d852))
* shorten multipart boundary sep to less than RFC specificed max length ([66ffab7](https://github.com/dodopayments/dodopayments-ruby/commit/66ffab71b6a77267df14a90fd5bde12d22ad4bee))


### Performance Improvements

* faster code formatting ([5e92807](https://github.com/dodopayments/dodopayments-ruby/commit/5e9280755725f1420ca9e0d87ca7fa3965db4331))


### Chores

* allow fast-format to use bsd sed as well ([5addb87](https://github.com/dodopayments/dodopayments-ruby/commit/5addb871c35167235fd876217b802fcb21897ae2))
* **internal:** codegen related update ([66cddcb](https://github.com/dodopayments/dodopayments-ruby/commit/66cddcbfa5be3de026313de045736ec56ecb4c27))

## 1.53.4 (2025-09-24)

Full Changelog: [v1.53.3...v1.53.4](https://github.com/dodopayments/dodopayments-ruby/compare/v1.53.3...v1.53.4)

### Features

* expose response headers for both streams and errors ([2826198](https://github.com/dodopayments/dodopayments-ruby/commit/2826198fd9296c989871232f5f8d4fd4c2b3b4fc))


### Chores

* do not install brew dependencies in ./scripts/bootstrap by default ([dec959f](https://github.com/dodopayments/dodopayments-ruby/commit/dec959fffb799e354d8910bdea436673b9834105))
* improve example values ([43a542a](https://github.com/dodopayments/dodopayments-ruby/commit/43a542af85f9cd87f974408617dbe3983c3cc7e5))

## 1.53.3 (2025-09-13)

Full Changelog: [v1.53.2...v1.53.3](https://github.com/dodopayments/dodopayments-ruby/compare/v1.53.2...v1.53.3)

### Features

* **api:** added typescript sdk for migration and updated org info ([d99ecd9](https://github.com/dodopayments/dodopayments-ruby/commit/d99ecd9f38597de768471dea17b7a9e4a960a844))
* **api:** manual updates ([2674ef9](https://github.com/dodopayments/dodopayments-ruby/commit/2674ef983999791b8d9df719054b07b2b369b3e2))

## 1.53.2 (2025-09-13)

Full Changelog: [v1.52.5...v1.53.2](https://github.com/dodopayments/dodopayments-ruby/compare/v1.52.5...v1.53.2)

### Features

* **api:** updated openapi spec to v1.53.2 with customer credits. ([c367cc9](https://github.com/dodopayments/dodopayments-ruby/commit/c367cc958324895dbb042f095a42a8db5f4dccee))

## 1.52.5 (2025-09-04)

Full Changelog: [v1.52.4...v1.52.5](https://github.com/dodopayments/dodopayments-ruby/compare/v1.52.4...v1.52.5)

### Features

* **api:** updated openapi spec to v1.52.4 ([49331b8](https://github.com/dodopayments/dodopayments-ruby/commit/49331b8c97f7995f20e6428fb6d0e2f8f567273e))

## 1.52.4 (2025-09-03)

Full Changelog: [v1.51.1...v1.52.4](https://github.com/dodopayments/dodopayments-ruby/compare/v1.51.1...v1.52.4)

### Features

* **api:** manual updates ([0dd3323](https://github.com/dodopayments/dodopayments-ruby/commit/0dd3323b773634410a377238bf3d3d7fadac0d12))
* **api:** updated openapi spec ([c338d93](https://github.com/dodopayments/dodopayments-ruby/commit/c338d93bcded89768cc1b92410496b7acf6db609))
* updated openapi spec and added model and API functions for Usage Based Billing ([54d898a](https://github.com/dodopayments/dodopayments-ruby/commit/54d898a1cd82cb37a2877dfb2838f6f9e5209943))

## 1.51.1 (2025-08-25)

Full Changelog: [v1.51.0...v1.51.1](https://github.com/dodopayments/dodopayments-ruby/compare/v1.51.0...v1.51.1)

### Chores

* add json schema comment for rubocop.yml ([86dcdab](https://github.com/dodopayments/dodopayments-ruby/commit/86dcdab494c5262fed8d513ded57ea81fa486885))

## 1.51.0 (2025-08-22)

Full Changelog: [v1.49.0...v1.51.0](https://github.com/dodopayments/dodopayments-ruby/compare/v1.49.0...v1.51.0)

### Features

* **api:** updated example ([69716fa](https://github.com/dodopayments/dodopayments-ruby/commit/69716fa0a72aed7d3b725fbe8ec395a0174c992e))
* **api:** updated openapi spec to v1.51.0 and added checkout sessions ([5704e81](https://github.com/dodopayments/dodopayments-ruby/commit/5704e81025036b184d5fec8a9958fcd07ed11a3d))


### Bug Fixes

* bump sorbet version and fix new type errors from the breaking change ([16a3d4d](https://github.com/dodopayments/dodopayments-ruby/commit/16a3d4d2aea39fd0b8b4fef79b5abb8ac5e5a7d6))

## 1.49.0 (2025-08-13)

Full Changelog: [v1.47.0...v1.49.0](https://github.com/dodopayments/dodopayments-ruby/compare/v1.47.0...v1.49.0)

### Features

* **api:** manual updates ([f9127c5](https://github.com/dodopayments/dodopayments-ruby/commit/f9127c578fca2e4304bcf47a394f9fa8b778f4a3))
* **api:** manual updates ([84efbc4](https://github.com/dodopayments/dodopayments-ruby/commit/84efbc4d2c7daceafb7db5232283025e0711908b))
* **api:** updated code for v1.49.0 ([9290571](https://github.com/dodopayments/dodopayments-ruby/commit/9290571193e4a5dee306b847d2a007529f46cd50))

## 1.47.0 (2025-08-13)

Full Changelog: [v1.22.0...v1.47.0](https://github.com/dodopayments/dodopayments-ruby/compare/v1.22.0...v1.47.0)

### Features

* **api:** manual updates ([983773e](https://github.com/dodopayments/dodopayments-ruby/commit/983773e4c578f0ed96f540e3f045834c10554143))


### Chores

* sync repo ([db17fcd](https://github.com/dodopayments/dodopayments-ruby/commit/db17fcde07de41be8514f3a310def3322718a388))

## 1.22.0 (2025-05-09)

Full Changelog: [v1.20.0...v1.22.0](https://github.com/dodopayments/dodopayments-ruby/compare/v1.20.0...v1.22.0)

### Features

* **api:** fixed api key schema to bearer ([06d3549](https://github.com/dodopayments/dodopayments-ruby/commit/06d354910a3eb15c036d35f68cfb5393c5a20c62))
* **api:** manual updates ([eae9353](https://github.com/dodopayments/dodopayments-ruby/commit/eae935376b239dc03bc8ad8ed201e9ca9c2eeaa4))
* **api:** updated openapi spec ([c369261](https://github.com/dodopayments/dodopayments-ruby/commit/c369261442be58e8b31890f0362fba1536bb9593))


### Bug Fixes

* **internal:** fix formatting script for macos ([8abfc9c](https://github.com/dodopayments/dodopayments-ruby/commit/8abfc9c2b3921e5fb3e5903612111e02a87e92d1))


### Chores

* accept all nd-json mimetype variants ([b0dd5d6](https://github.com/dodopayments/dodopayments-ruby/commit/b0dd5d644ce5ebbcd0259dca5f9113befa548b54))
* always check if current page is empty in `next_page?` ([45b817d](https://github.com/dodopayments/dodopayments-ruby/commit/45b817d504e3c4cbc17b328c53ab9a310d038b22))
* **internal:** codegen related update ([e3ce1b3](https://github.com/dodopayments/dodopayments-ruby/commit/e3ce1b36a1ea8dba0fbd2915a6deadc01820d280))
* **internal:** codegen related update ([2cd0f3e](https://github.com/dodopayments/dodopayments-ruby/commit/2cd0f3e089a67097c26e9abef90b55cecfaa014c))
* re-export top level models under library namespace ([bbc82df](https://github.com/dodopayments/dodopayments-ruby/commit/bbc82df831d64038e9169ff0912401d2e333082b))
* remove Gemfile.lock during bootstrap ([a484914](https://github.com/dodopayments/dodopayments-ruby/commit/a48491445f25a274883dd8068913efcd9e68c32d))
* revert ignoring Gemfile.lock ([8ba5e6a](https://github.com/dodopayments/dodopayments-ruby/commit/8ba5e6a4f876f0823b33eb92443ebd5d97c2139f))
* validate request option coercion correctness ([1ac286c](https://github.com/dodopayments/dodopayments-ruby/commit/1ac286ccf79b674d312bf50fa29bb8a1f7e37176))


### Documentation

* illustrate environmental defaults for auth variables ([520d6cf](https://github.com/dodopayments/dodopayments-ruby/commit/520d6cf3692d5aeaf3faee980160521d81bd3867))

## 1.20.0 (2025-05-01)

Full Changelog: [v1.19.0...v1.20.0](https://github.com/dodopayments/dodopayments-ruby/compare/v1.19.0...v1.20.0)

### Features

* **api:** added addons ([b7ab9df](https://github.com/dodopayments/dodopayments-ruby/commit/b7ab9dfcffc9113bb89668fac0870241e68ec1f8))
* **api:** updated readme example ([7ab77ac](https://github.com/dodopayments/dodopayments-ruby/commit/7ab77ac6b2f2349a0876996b2740d4baeca97f3f))
* **api:** updated readme example ([9646785](https://github.com/dodopayments/dodopayments-ruby/commit/964678539575be673521723ef0b41c5b5af85f97))


### Bug Fixes

* re-exported array and map models should typecheck in steep ([443c685](https://github.com/dodopayments/dodopayments-ruby/commit/443c685afdddc50872c8eddbf7acf37d1bf65402))


### Chores

* migrate away from deprecated `JSON#fast_generate` ([11a01cc](https://github.com/dodopayments/dodopayments-ruby/commit/11a01ccc3ab39f47c6b13ff359bf4ec99378c40b))


### Documentation

* **readme:** fix typo ([32dda82](https://github.com/dodopayments/dodopayments-ruby/commit/32dda82d2b0fd01b6bc1c4b19a62a39ecc3f96c1))

## 1.19.0 (2025-04-30)

Full Changelog: [v1.18.3...v1.19.0](https://github.com/dodopayments/dodopayments-ruby/compare/v1.18.3...v1.19.0)

### Bug Fixes

* ensure gem release is unaffected by renaming ([d134bf2](https://github.com/dodopayments/dodopayments-ruby/commit/d134bf2816ddc6c6de271b01dfe00251ec0ad429))
* make a typo for `FilePart.content` ([e1b34c1](https://github.com/dodopayments/dodopayments-ruby/commit/e1b34c1896c629aad7f696511b4fa31e23c240ad))


### Chores

* add generator safe directory ([176120f](https://github.com/dodopayments/dodopayments-ruby/commit/176120f332f361f8c7b111925de0a6b9d95b472d))
* **internal:** annotate request options with type aliases in sorbet ([4e29dc1](https://github.com/dodopayments/dodopayments-ruby/commit/4e29dc1213b30f2fe1b8aae34e9e86206b7d087a))
* **internal:** mostly README touch ups ([d4fd618](https://github.com/dodopayments/dodopayments-ruby/commit/d4fd618c958e24432f76778b74c6c47e32c48d28))
* **internal:** remove unnecessary `rbi/lib` folder ([0745897](https://github.com/dodopayments/dodopayments-ruby/commit/07458978bf5b06c8c1bafdce5ee3287091cad34b))
* loosen rubocop rules that don't always make sense ([129618a](https://github.com/dodopayments/dodopayments-ruby/commit/129618aafdd550efaa6b8788b431b1739aa509e1))
* more accurate type annotations and aliases ([433979e](https://github.com/dodopayments/dodopayments-ruby/commit/433979e298c9967438df5e92674b314f075ad4ea))

## 1.18.3 (2025-04-25)

Full Changelog: [v1.18.1...v1.18.3](https://github.com/dodopayments/dodopayments-ruby/compare/v1.18.1...v1.18.3)

### Features

* **api:** manual updates ([8b7a0e3](https://github.com/dodopayments/dodopayments-ruby/commit/8b7a0e39176cba466b53219cdb64a7ec6b3f6500))

## 1.18.1 (2025-04-25)

Full Changelog: [v1.18.0...v1.18.1](https://github.com/dodopayments/dodopayments-ruby/compare/v1.18.0...v1.18.1)

### Features

* support specifying content-type with FilePart class ([05ee21c](https://github.com/dodopayments/dodopayments-ruby/commit/05ee21c08e27593808a49a31d8a06b2aa9fdf1a9))
* support webmock for testing ([aff42ca](https://github.com/dodopayments/dodopayments-ruby/commit/aff42ca9a2c889dadb9eb375948d36302d3504b0))


### Chores

* broadly detect json family of content-type headers ([826d222](https://github.com/dodopayments/dodopayments-ruby/commit/826d222ddeb13f2778a39d55534248e13be8f409))
* **ci:** only use depot for staging repos ([bb8e176](https://github.com/dodopayments/dodopayments-ruby/commit/bb8e17605af188705dccc623554128e933180811))
* **internal:** codegen related update ([e449407](https://github.com/dodopayments/dodopayments-ruby/commit/e4494070a75a27e9cc85bacc312c816fff999541))
* **internal:** improve response envelope unwrap functionality ([6e7675c](https://github.com/dodopayments/dodopayments-ruby/commit/6e7675c0fb1ad1618fd2d1a2e44e0e7e67c56456))
* show truncated parameter docs in yard ([904002a](https://github.com/dodopayments/dodopayments-ruby/commit/904002ac59c8008068ad27dd17c43e433f8d1a32))

## 1.18.0 (2025-04-23)

Full Changelog: [v1.17.0...v1.18.0](https://github.com/dodopayments/dodopayments-ruby/compare/v1.17.0...v1.18.0)

### Features

* **api:** added change plan api ([fc2cff8](https://github.com/dodopayments/dodopayments-ruby/commit/fc2cff8003f8e95dcac370e321055f1e28527ce3))
* **api:** manual updates ([166a9b4](https://github.com/dodopayments/dodopayments-ruby/commit/166a9b4ee8b5321673418e4a50c79e5c80d26295))


### Chores

* **ci:** add timeout thresholds for CI jobs ([2bf3878](https://github.com/dodopayments/dodopayments-ruby/commit/2bf3878e437abc08274ded07eff6050685a4bcfd))

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
