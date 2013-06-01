package hedewi
{
   import flash.display.Sprite;
   import flash.display.GraphicsSolidFill;
   import flash.display.GraphicsPath;
   import __AS3__.vec.Vector;
   import flash.display.IGraphicsData;
   import flash.display.Shape;
   import suko.Rerapipy;
   import com.company.util.Tizulo;
   import com.company.assembleegameclient.objects.Player;
   import pirus.Vimaz;
   import com.company.assembleegameclient.objects.ObjectLibrary;


   public class Zyciwu extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Zyciwu(param1:int, param2:Rerapipy) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.qofad=new GraphicsSolidFill(this.getBackgroundColor(),1);
         this.path_=new GraphicsPath(new Vector.<int>(),new Vector.<Number>());
         new Vector.<IGraphicsData>(3)[0]=this.qofad;
         new Vector.<IGraphicsData>(3)[1]=this.path_;
         new Vector.<IGraphicsData>(3)[2]=Tizulo.END_FILL;
         this.graphicsData_=new Vector.<IGraphicsData>(3);
         super();
         this.nejidebup=param1;
         this.hywot=param2;
         this.gegywum=new Shape();
         addChild(this.gegywum);
         this.setItemSprite(new Madi());
         return;
      }

      public static const TILE_DOUBLE_CLICK:String = "TILE_DOUBLE_CLICK";

      public static const TILE_SINGLE_CLICK:String = "TILE_SINGLE_CLICK";

      public static const WIDTH:int = 40;

      public static const HEIGHT:int = 40;

      public static const BORDER:int = 4;

      private var qofad:GraphicsSolidFill;

      private var path_:GraphicsPath;

      private var graphicsData_:Vector.<IGraphicsData>;

      private var gegywum:Shape;

      public var cyjop:Madi;

      public var nejidebup:int;

      public var hywot:Rerapipy;

      public var blockingItemUpdates:Boolean;

      public function tizyf(param1:Array) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         Tizulo.vomynaqu(this.path_);
         Tizulo.woforyzib(0,0,WIDTH,HEIGHT,4,param1,this.path_);
         graphics.clear();
         graphics.drawGraphicsData(this.graphicsData_);
         var _loc2_:GraphicsSolidFill = new GraphicsSolidFill(6036765,1);
         Tizulo.vomynaqu(this.path_);
         new Vector.<IGraphicsData>(3)[0]=_loc2_;
         new Vector.<IGraphicsData>(3)[1]=this.path_;
         new Vector.<IGraphicsData>(3)[2]=Tizulo.END_FILL;
         var _loc3_:Vector.<IGraphicsData> = new Vector.<IGraphicsData>(3);
         Tizulo.woforyzib(0,0,WIDTH,HEIGHT,4,param1,this.path_);
         this.gegywum.graphics.drawGraphicsData(_loc3_);
         this.gegywum.cacheAsBitmap=true;
         this.gegywum.visible=false;
         return;
      }

      public function setItem(param1:int) : Boolean {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(param1==this.cyjop.itemId)
         {
            return false;
         }
         if(this.blockingItemUpdates)
         {
            return true;
         }
         this.cyjop.setType(param1);
         this.towiqoju(this.hywot.curPlayer);
         return true;
      }

      public function setItemSprite(param1:Madi) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.cyjop=param1;
         this.cyjop.x=WIDTH/2;
         this.cyjop.y=HEIGHT/2;
         addChild(this.cyjop);
         return;
      }

      public function towiqoju(param1:Player) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.cyjop.itemId!=Vimaz.sufybefyr)
         {
            this.gegywum.visible=!ObjectLibrary.pinuwovac(this.cyjop.itemId,param1);
         }
         else
         {
            this.gegywum.visible=false;
         }
         return;
      }

      public function canHoldItem(param1:int) : Boolean {
         return true;
      }

      public function zydehaw() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.setItemSprite(this.cyjop);
         return;
      }

      public function vycuc() : int {
         return this.cyjop.itemId;
      }

      protected function getBackgroundColor() : int {
         return 5526612;
      }
   }

}