package hedewi
{
   import flash.display.Sprite;
   import flash.geom.Matrix;
   import flash.filters.ColorMatrixFilter;
   import flash.display.Bitmap;
   import movimet.Jetadopuc;
   import flash.display.BitmapData;
   import pirus.Vimaz;
   import com.company.assembleegameclient.objects.ObjectLibrary;
   import nec.Nara;


   public class Madi extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Madi() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         this.caw=new Bitmap();
         addChild(this.caw);
         this.itemId=-1;
         return;
      }

      protected static const mamuwuhik:Array = [new ColorMatrixFilter([0.4,0.0,0.0,0.0,0.0,0.0,0.4,0.0,0.0,0.0,0.0,0.0,0.4,0.0,0.0,0.0,0.0,0.0,1,0.0])];

      private static const qafywo:Matrix = new Matrix();

      private static const tihomedyz:Matrix = new function():Matrix
                                                    {
                                                    var _loc1_:* = new Matrix();
                                                    _loc1_.translate(10,5);
                                                    return _loc1_;
                                                    }();

      public var itemId:int;

      public var caw:Bitmap;

      private var jyr:Jetadopuc;

      public function setDim(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         filters=param1?mamuwuhik:null;
         return;
      }

      public function setType(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.itemId=param1;
         this.daqit();
         return;
      }

      public function daqit() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:BitmapData = null;
         var _loc2_:XML = null;
         var _loc3_:BitmapData = null;
         if(this.itemId!=Vimaz.sufybefyr)
         {
            _loc1_=ObjectLibrary.getRedrawnTextureFromType(this.itemId,80,true);
            _loc2_=ObjectLibrary.tem[this.itemId];
            if((_loc2_)&&(_loc2_.hasOwnProperty("Doses"))&&(this.jyr))
            {
               _loc1_=_loc1_.clone();
               _loc3_=this.jyr.make(new Nara(String(_loc2_.Doses)),12,16777215,false,qafywo,false);
               _loc1_.draw(_loc3_,tihomedyz);
            }
            this.caw.bitmapData=_loc1_;
            this.caw.x=-_loc1_.width/2;
            this.caw.y=-_loc1_.height/2;
            visible=true;
         }
         else
         {
            visible=false;
         }
         return;
      }

      public function zuku(param1:Jetadopuc) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.jyr=param1;
         return;
      }
   }

}