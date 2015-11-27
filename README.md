# 仿微信获取附近的地标
![enter image description here](https://raw.githubusercontent.com/CorzFree/WeChatNearbyLocationDemo/master/selectLocation.gif)

该demo基于高德地图poi检索，需要自己注册一个key,[高德key申请](http://lbs.amap.com/console/key)


----------

主要代码
--

    
    AMapPOIAroundSearchRequest *request = [[AMapPOIAroundSearchRequest alloc] init];
    request.location                    = [AMapGeoPoint locationWithLatitude:23.107307 longitude:113.384098];
    request.keywords                    = @"";
    request.sortrule                    = 0;
    request.requireExtension            = YES;
    request.radius                      = 1000;
    request.page                        = self.pageIndex;
    request.offset                      = self.pageCount;
    request.types                       = @"050000|060000|070000|080000|090000|100000|110000|120000|130000|140000|150000|160000|170000";
    
    [self.search AMapPOIAroundSearch:request];
  
 以上代码段用于发起检索请求，获取周边的数据

   

    #pragma mark - AMapSearchDelegate
  
    - (void)onPOISearchDone:(AMapPOISearchBaseRequest *)request response:(AMapPOISearchResponse *)response{
	     if (response.pois.count == 0){
	        return;
		  }
	     for(AMapPOI *poi in response.pois){
		     NSLog(@"%@",poi.name);
		 }
	}


以上是获取到数据的回调，在此可以获取周边信息.
