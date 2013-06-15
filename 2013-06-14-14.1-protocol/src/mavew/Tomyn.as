package mavew
{
   import flash.display.Bitmap;
   import com.company.assembleegameclient.objects.GameObject;
   import flash.display.BitmapData;
   import com.company.util.BitmapUtil;


   public class Tomyn extends Qyryl
   {
      public function Tomyn(param1:GameObject) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super(6036765,1,16549442,1,false);
         this.kacezy=new Bitmap();
         this.kacezy.x=0;
         this.kacezy.y=0;
         var _loc2_:BitmapData = param1.getPortrait();
         _loc2_=BitmapUtil.kodopomid(_loc2_,10,10,_loc2_.width-20,_loc2_.height-20);
         this.kacezy.bitmapData=_loc2_;
         addChild(this.kacezy);
         filters=[];
         return;
      }

      private var kacezy:Bitmap;
   }

}