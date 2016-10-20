import common
import edify_generator

def RemoveDeviceAssert(info):
  edify = info.script
  for i in xrange(len(edify.script)):
    if "ro.product" in edify.script[i]:
      edify.script[i] = ''
      return

def AddAssertions(info):
    edify = info.script
    for i in xrange(len(edify.script)):
        if " ||" in edify.script[i] and ("ro.product.device" in edify.script[i] or "ro.build.product" in edify.script[i]):
            edify.script[i] = edify.script[i].replace(" ||", ' || getprop("ro.product.device") == "870" || getprop("ro.build.product") == "870" || getprop("ro.product.device") == "ef52l" || getprop("ro.build.product") == "ef52l" || getprop("ro.product.device") == "IM-A870L" || getprop("ro.build.product") == "IM-A870L" || getprop("ro.product.device") == "A870L" || getprop("ro.build.product") == "A870L" || getprop("ro.product.device") == "ef52k" || getprop("ro.build.product") == "ef52k" || getprop("ro.product.device") == "ef52s" || getprop("ro.build.product") == "ef52s" || getprop("ro.product.device") == "IM-A870K" || getprop("ro.build.product") == "IM-A870K" || getprop("ro.product.device") == "IM-A870S" || getprop("ro.build.product") == "IM-A870S" || getprop("ro.product.device") == "A870" || getprop("ro.build.product") == "A870" || getprop("ro.product.device") == "IM-A870" || getprop("ro.build.product") == "IM-A870" || getprop("ro.product.device") == "a870" || getprop("ro.build.product") == "a870" || getprop("ro.product.device") == "VEGA Iron" || getprop("ro.build.product") == "VEGA Iron" ||')
            return


def AddArgsForFormatSystem(info):
  edify = info.script
  for i in xrange(len(edify.script)):
    if "format(" in edify.script[i] and "/dev/block/platform/msm_sdcc.1/by-name/system" in edify.script[i]:
      edify.script[i] = 'format("ext4", "EMMC", "/dev/block/platform/msm_sdcc.1/by-name/system", "0", "/system");'
      return

def WritePolicyConfig(info):
  try:
    file_contexts = info.input_zip.read("META/file_contexts")
    common.ZipWriteStr(info.output_zip, "file_contexts", file_contexts)
  except KeyError:
    print "warning: file_context missing from target;"

def FullOTA_InstallEnd(info):
    AddAssertions(info)
    WritePolicyConfig(info)
def IncrementalOTA_InstallEnd(info):
    AddAssertions(info)
