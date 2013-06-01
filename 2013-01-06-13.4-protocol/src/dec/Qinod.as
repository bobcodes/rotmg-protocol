package dec
{
[CLASS1825]   import pigeguwo.Jazyv;
   import flash.display.Bitmap;
   import com.company.assembleegameclient.objects.ObjectLibrary;
   import flash.display.BitmapData;


   class Qinod extends Cozicebyk
   {
      function Qinod(param1:XML) {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc3_:Bitmap = null;
         super(int(param1.@type));
         this.cuvemyci=param1;
         var _loc2_:BitmapData = ObjectLibrary.getRedrawnTextureFromType(type_,100,true,false);
         _loc3_=new Bitmap(_loc2_);
         var _loc4_:Number = (WIDTH-4)/Math.max(_loc3_.width,_loc3_.height);
         _loc3_.scaleX=_loc3_.scaleY=_loc4_;
         _loc3_.x=WIDTH/2-_loc3_.width/2;
         _loc3_.y=HEIGHT/2-_loc3_.height/2;
         addChild(_loc3_);
         return;
      }

      public var cuvemyci:XML;

      override protected function getToolTip() : Jazyv {
         return new Dokugehom(this.cuvemyci);
      }
   }
[/CLASS]
}