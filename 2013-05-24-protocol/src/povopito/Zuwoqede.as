package povopito
{
   import flash.display.Bitmap;
   import com.company.assembleegameclient.objects.GameObject;
   import flash.display.BitmapData;
   import com.company.util.BitmapUtil;


   public class Zuwoqede extends Ryduwi
   {
      public function Zuwoqede(param1:GameObject) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super(6036765,1,16549442,1,false);
         this.sypewe=new Bitmap();
         this.sypewe.x=0;
         this.sypewe.y=0;
         var _loc2_:BitmapData = param1.getPortrait();
         _loc2_=BitmapUtil.wygoci(_loc2_,10,10,_loc2_.width-20,_loc2_.height-20);
         this.sypewe.bitmapData=_loc2_;
         addChild(this.sypewe);
         filters=[];
         return;
      }

      private var sypewe:Bitmap;
   }

}