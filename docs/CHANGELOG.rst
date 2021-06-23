
Changelog
=========

`0.3.0 <https://github.com/saltstack-formulas/rng-tools-formula/compare/v0.2.0...v0.3.0>`_ (2021-06-23)
-----------------------------------------------------------------------------------------------------------

Bug Fixes
^^^^^^^^^


* **container:** respect ``ConditionVirtualization`` service setting (\ `22e9f28 <https://github.com/saltstack-formulas/rng-tools-formula/commit/22e9f2857adb19df22d68dfc6cc150db29b17057>`_\ )

Continuous Integration
^^^^^^^^^^^^^^^^^^^^^^


* **kitchen+gitlab:** remove Ubuntu 16.04 & Fedora 32 (EOL) [skip ci] (\ `8a54bef <https://github.com/saltstack-formulas/rng-tools-formula/commit/8a54befff62cd310fda0b06f3bdd5b1a23ac9c3b>`_\ )
* add ``arch-master`` to matrix and update ``.travis.yml`` [skip ci] (\ `65701f3 <https://github.com/saltstack-formulas/rng-tools-formula/commit/65701f31e735a3594fad99f7705c79aac46b7d54>`_\ )
* **commitlint:** ensure ``upstream/master`` uses main repo URL [skip ci] (\ `366b077 <https://github.com/saltstack-formulas/rng-tools-formula/commit/366b0772b6f0dc5df927d3faed79b7cb01d7ddb6>`_\ )
* **gemfile+lock:** use ``ssf`` customised ``kitchen-docker`` repo [skip ci] (\ `f1f9896 <https://github.com/saltstack-formulas/rng-tools-formula/commit/f1f98966daa473cc261cf11df1638cac18d29808>`_\ )
* **gitlab-ci:** add ``rubocop`` linter (with ``allow_failure``\ ) [skip ci] (\ `295ef1a <https://github.com/saltstack-formulas/rng-tools-formula/commit/295ef1a30ab9967e4e0281dc8b0ad87ca881b8f8>`_\ )
* **gitlab-ci:** use GitLab CI as Travis CI replacement (\ `368490a <https://github.com/saltstack-formulas/rng-tools-formula/commit/368490a8be9c7969510092262cd1aed9d00a9528>`_\ )
* **kitchen+ci:** use latest pre-salted images (after CVE) [skip ci] (\ `fc3af2d <https://github.com/saltstack-formulas/rng-tools-formula/commit/fc3af2dfcf1f23b7ad8750e2d4ddcf03ee3934c2>`_\ )
* **kitchen+gitlab:** adjust matrix to add ``3003`` [skip ci] (\ `87132ad <https://github.com/saltstack-formulas/rng-tools-formula/commit/87132ad2e5ae1aacc0d0f8fb2b0b616cf11aa10b>`_\ )
* **kitchen+gitlab-ci:** use latest pre-salted images [skip ci] (\ `49cd66e <https://github.com/saltstack-formulas/rng-tools-formula/commit/49cd66e0686a32525846196233b2763f45cedef2>`_\ )
* **pre-commit:** add to formula [skip ci] (\ `8e720a8 <https://github.com/saltstack-formulas/rng-tools-formula/commit/8e720a8bdd5296b7a71c43bfde7ae7ab4583944a>`_\ )
* **pre-commit:** enable/disable ``rstcheck`` as relevant [skip ci] (\ `7bb2a9a <https://github.com/saltstack-formulas/rng-tools-formula/commit/7bb2a9a486bafbd695658e0c4fce8a3fb0269959>`_\ )
* **pre-commit:** finalise ``rstcheck`` configuration [skip ci] (\ `d0118c2 <https://github.com/saltstack-formulas/rng-tools-formula/commit/d0118c282bd8f9d136261d6fa7c26cb62e36da8d>`_\ )
* **pre-commit:** update hook for ``rubocop`` [skip ci] (\ `e456be6 <https://github.com/saltstack-formulas/rng-tools-formula/commit/e456be6ce27269a9da63722494d7c00366eb3f99>`_\ )

Features
^^^^^^^^


* **osfamilymap:** add Gentoo support (\ `4cc0fa7 <https://github.com/saltstack-formulas/rng-tools-formula/commit/4cc0fa7666ce60675a77d65b5c244f20594e5594>`_\ )

Reverts
^^^^^^^


* **container:** respect ``ConditionVirtualization`` service setting (\ `d310e29 <https://github.com/saltstack-formulas/rng-tools-formula/commit/d310e29d4b1b5b7446a07f00d41887187426a4bf>`_\ )

Tests
^^^^^


* **service:** add helper state to run service in containers (\ `4fb69a3 <https://github.com/saltstack-formulas/rng-tools-formula/commit/4fb69a36c8ae38600984ab8f7a2fbc0add8a5ad9>`_\ )
* standardise use of ``share`` suite & ``_mapdata`` state [skip ci] (\ `4a58684 <https://github.com/saltstack-formulas/rng-tools-formula/commit/4a58684c9966b6590fda2a8377aeecb96ec1a6cf>`_\ )
* **share:** standardise with latest changes [skip ci] (\ `d2ef096 <https://github.com/saltstack-formulas/rng-tools-formula/commit/d2ef096914ba04b7a1cd43191b1536083b4a70d0>`_\ )

`0.2.0 <https://github.com/saltstack-formulas/rng-tools-formula/compare/v0.1.0...v0.2.0>`_ (2020-09-20)
-----------------------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **semantic-release:** standardise structure (\ `9e275c6 <https://github.com/saltstack-formulas/rng-tools-formula/commit/9e275c6f71b6499cd6981bcef19a0b88249d360f>`_\ ), closes `#1 <https://github.com/saltstack-formulas/rng-tools-formula/issues/1>`_
