package loqaj
{
   import flash.display.Sprite;
   import flash.display.GraphicsSolidFill;
   import flash.display.GraphicsPath;
   import __AS3__.vec.Vector;
   import flash.display.IGraphicsData;
   import flash.display.Shape;
   import copano.Byz;
   import com.company.util.Dyrejocu;
   import com.company.assembleegameclient.objects.Player;
   import pilage.Tope;
   import com.company.assembleegameclient.objects.ObjectLibrary;


   public class Lokaz extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Lokaz(param1:int, param2:Byz) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.visygody=new GraphicsSolidFill(this.getBackgroundColor(),1);
         this.path_=new GraphicsPath(new Vector.<int>(),new Vector.<Number>());
         new Vector.<IGraphicsData>(3)[0]=this.visygody;
         new Vector.<IGraphicsData>(3)[1]=this.path_;
         new Vector.<IGraphicsData>(3)[2]=Dyrejocu.END_FILL;
         this.graphicsData_=new Vector.<IGraphicsData>(3);
         super();
         this.binaho=param1;
         this.dirisisy=param2;
         this.fydobyzi=new Shape();
         addChild(this.fydobyzi);
         this.setItemSprite(new Hajuveby());
         return;
      }

      public static const TILE_DOUBLE_CLICK:String = "TILE_DOUBLE_CLICK";

      public static const TILE_SINGLE_CLICK:String = "TILE_SINGLE_CLICK";

      public static const WIDTH:int = 40;

      public static const HEIGHT:int = 40;

      public static const BORDER:int = 4;

      private var visygody:GraphicsSolidFill;

      private var path_:GraphicsPath;

      private var graphicsData_:Vector.<IGraphicsData>;

      private var fydobyzi:Shape;

      public var soqugarol:Hajuveby;

      public var binaho:int;

      public var dirisisy:Byz;

      public var blockingItemUpdates:Boolean;

      public function guviqejy(param1:Array) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         Dyrejocu.gorudy(this.path_);
         Dyrejocu.moluv(0,0,WIDTH,HEIGHT,4,param1,this.path_);
         graphics.clear();
         graphics.drawGraphicsData(this.graphicsData_);
         var _loc2_:GraphicsSolidFill = new GraphicsSolidFill(6036765,1);
         Dyrejocu.gorudy(this.path_);
         new Vector.<IGraphicsData>(3)[0]=_loc2_;
         new Vector.<IGraphicsData>(3)[1]=this.path_;
         new Vector.<IGraphicsData>(3)[2]=Dyrejocu.END_FILL;
         var _loc3_:Vector.<IGraphicsData> = new Vector.<IGraphicsData>(3);
         Dyrejocu.moluv(0,0,WIDTH,HEIGHT,4,param1,this.path_);
         this.fydobyzi.graphics.drawGraphicsData(_loc3_);
         this.fydobyzi.cacheAsBitmap=true;
         this.fydobyzi.visible=false;
         return;
      }

      public function setItem(param1:int) : Boolean {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1==this.soqugarol.itemId)
         {
            return false;
         }
         if(this.blockingItemUpdates)
         {
            return true;
         }
         this.soqugarol.setType(param1);
         this.wavuciwiz(this.dirisisy.curPlayer);
         return true;
      }

      public function setItemSprite(param1:Hajuveby) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.soqugarol=param1;
         this.soqugarol.x=WIDTH/2;
         this.soqugarol.y=HEIGHT/2;
         addChild(this.soqugarol);
         return;
      }

      public function wavuciwiz(param1:Player) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.soqugarol.itemId!=Tope.puheqah)
         {
            this.fydobyzi.visible=!ObjectLibrary.racig(this.soqugarol.itemId,param1);
         }
         else
         {
            this.fydobyzi.visible=false;
         }
         return;
      }

      public function canHoldItem(param1:int) : Boolean {
         return true;
      }

      public function syfoh() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.setItemSprite(this.soqugarol);
         return;
      }

      public function qavowykez() : int {
         return this.soqugarol.itemId;
      }

      protected function getBackgroundColor() : int {
         return 5526612;
      }
   }

}