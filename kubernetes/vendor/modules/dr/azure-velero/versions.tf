/**
 * Copyright (c) 2017-present SIGHUP s.r.l All rights reserved.
 * Use of this source code is governed by a BSD-style
 * license that can be found in the LICENSE file.
 */

terraform {
  required_version = ">= 0.15.4"
  required_providers {
    azurerm = ">= 2.60.0"
    azuread = ">= 1.5.0"
  }
}
