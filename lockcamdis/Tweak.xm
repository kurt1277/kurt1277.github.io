%hook SBLockScreenView
- (void)setCameraGrabberHidden:(_Bool)arg1 forRequester:(id)arg2{
  %orig(true, arg2);
}

- (_Bool)isCameraGrabberHidden{
  return true;
}
%end

%hook SpringBoard
- (_Bool)canShowLockScreenCameraGrabber{
    return false;
}

- (_Bool)lockScreenCameraSupported{
  return false;
}
%end
