@echo off
:: Clear any existing product key
slmgr /upk
:: Clear any previous KMS server settings
slmgr.vbs /cpky
slmgr /ckms
slmgr.vbs /ckms
:: Install a new product key
slmgr -ipk NPPR9-FWDCX-D2C8J-H872K-2YT43
:: Set the KMS server
slmgr.vbs -skms KMS.domain.local
:: Activate Windows
slmgr.vbs -ato
