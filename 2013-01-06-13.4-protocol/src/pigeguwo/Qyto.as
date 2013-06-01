package pigeguwo
{
[CLASS1829]   import flash.display.Bitmap;
   import com.company.assembleegameclient.objects.GameObject;
   import flash.display.BitmapData;
   import com.company.util.BitmapUtil;


   public class Qyto extends Jazyv
   {
      public function Qyto(param1:GameObject) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super(6036765,1,16549442,1,false);
         this.sedi=new Bitmap();
         this.sedi.x=0;
         this.sedi.y=0;
         var _loc2_:BitmapData = param1.getPortrait();
         _loc2_=BitmapUtil.wukofy(_loc2_,10,10,_loc2_.width-20,_loc2_.height-20);
         this.sedi.bitmapData=_loc2_;
         addChild(this.sedi);
         filters=[];
         return;
      }

      private var sedi:Bitmap;
   }
[/CLASS]
}