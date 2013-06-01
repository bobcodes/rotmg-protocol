package daloraf
{
[CLASS529]   import flash.display.Sprite;
   import flash.geom.Matrix;
   import flash.filters.ColorMatrixFilter;
   import flash.display.Bitmap;
   import pudev.Sinobyf;
   import flash.display.BitmapData;
   import kuzycyw.Mygisyqoc;
   import com.company.assembleegameclient.objects.ObjectLibrary;
   import totuhare.Javo;


   public class Guganyqug extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Guganyqug() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         this.vun=new Bitmap();
         addChild(this.vun);
         this.itemId=-1;
         return;
      }

      protected static const wedateqec:Array = [new ColorMatrixFilter([0.4,0.0,0.0,0.0,0.0,0.0,0.4,0.0,0.0,0.0,0.0,0.0,0.4,0.0,0.0,0.0,0.0,0.0,1,0.0])];

      private static const subaquzi:Matrix = new Matrix();

      private static const kybuziz:Matrix = new function():Matrix
                                                  {
                                                  var _loc1_:* = new Matrix();
                                                  _loc1_.translate(10,5);
                                                  return _loc1_;
                                                  }();

      public var itemId:int;

      public var vun:Bitmap;

      private var murohero:Sinobyf;

      public function setDim(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         filters=param1?wedateqec:null;
         return;
      }

      public function setType(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.itemId=param1;
         this.gujoruj();
         return;
      }

      public function gujoruj() : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:BitmapData = null;
         var _loc2_:XML = null;
         var _loc3_:BitmapData = null;
         if(this.itemId!=Mygisyqoc.kenyh)
         {
            _loc1_=ObjectLibrary.getRedrawnTextureFromType(this.itemId,80,true);
            _loc2_=ObjectLibrary.zedij[this.itemId];
            if((_loc2_)&&(_loc2_.hasOwnProperty("Doses"))&&(this.murohero))
            {
               _loc1_=_loc1_.clone();
               _loc3_=this.murohero.make(new Javo(String(_loc2_.Doses)),12,16777215,false,subaquzi,false);
               _loc1_.draw(_loc3_,kybuziz);
            }
            this.vun.bitmapData=_loc1_;
            this.vun.x=-_loc1_.width/2;
            this.vun.y=-_loc1_.height/2;
            visible=true;
         }
         else
         {
            visible=false;
         }
         return;
      }

      public function wumo(param1:Sinobyf) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.murohero=param1;
         return;
      }
   }
[/CLASS]
}