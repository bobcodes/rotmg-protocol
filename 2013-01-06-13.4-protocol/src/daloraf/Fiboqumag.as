package daloraf
{
[CLASS1066]   import flash.display.Sprite;
   import flash.display.GraphicsSolidFill;
   import flash.display.GraphicsPath;
   import __AS3__.vec.Vector;
   import flash.display.IGraphicsData;
   import flash.display.Shape;
   import ferozosyf.Jogohyh;
   import com.company.util.Nosupygu;
   import com.company.assembleegameclient.objects.Player;
   import kuzycyw.Mygisyqoc;
   import com.company.assembleegameclient.objects.ObjectLibrary;


   public class Fiboqumag extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Fiboqumag(param1:int, param2:Jogohyh) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.coboj=new GraphicsSolidFill(this.getBackgroundColor(),1);
         this.path_=new GraphicsPath(new Vector.<int>(),new Vector.<Number>());
         new Vector.<IGraphicsData>(3)[0]=this.coboj;
         new Vector.<IGraphicsData>(3)[1]=this.path_;
         new Vector.<IGraphicsData>(3)[2]=Nosupygu.END_FILL;
         this.graphicsData_=new Vector.<IGraphicsData>(3);
         super();
         this.nym=param1;
         this.kotifi=param2;
         this.fynymah=new Shape();
         addChild(this.fynymah);
         this.setItemSprite(new Guganyqug());
         return;
      }

      public static const TILE_DOUBLE_CLICK:String = "TILE_DOUBLE_CLICK";

      public static const TILE_SINGLE_CLICK:String = "TILE_SINGLE_CLICK";

      public static const WIDTH:int = 40;

      public static const HEIGHT:int = 40;

      public static const BORDER:int = 4;

      private var coboj:GraphicsSolidFill;

      private var path_:GraphicsPath;

      private var graphicsData_:Vector.<IGraphicsData>;

      private var fynymah:Shape;

      public var cawiluz:Guganyqug;

      public var nym:int;

      public var kotifi:Jogohyh;

      public var blockingItemUpdates:Boolean;

      public function qafu(param1:Array) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         Nosupygu.jyrodepu(this.path_);
         Nosupygu.secebeq(0,0,WIDTH,HEIGHT,4,param1,this.path_);
         graphics.clear();
         graphics.drawGraphicsData(this.graphicsData_);
         var _loc2_:GraphicsSolidFill = new GraphicsSolidFill(6036765,1);
         Nosupygu.jyrodepu(this.path_);
         new Vector.<IGraphicsData>(3)[0]=_loc2_;
         new Vector.<IGraphicsData>(3)[1]=this.path_;
         new Vector.<IGraphicsData>(3)[2]=Nosupygu.END_FILL;
         var _loc3_:Vector.<IGraphicsData> = new Vector.<IGraphicsData>(3);
         Nosupygu.secebeq(0,0,WIDTH,HEIGHT,4,param1,this.path_);
         this.fynymah.graphics.drawGraphicsData(_loc3_);
         this.fynymah.cacheAsBitmap=true;
         this.fynymah.visible=false;
         return;
      }

      public function setItem(param1:int) : Boolean {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(param1==this.cawiluz.itemId)
         {
            return false;
         }
         if(this.blockingItemUpdates)
         {
            return true;
         }
         this.cawiluz.setType(param1);
         this.mipi(this.kotifi.curPlayer);
         return true;
      }

      public function setItemSprite(param1:Guganyqug) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.cawiluz=param1;
         this.cawiluz.x=WIDTH/2;
         this.cawiluz.y=HEIGHT/2;
         addChild(this.cawiluz);
         return;
      }

      public function mipi(param1:Player) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.cawiluz.itemId!=Mygisyqoc.kenyh)
         {
            this.fynymah.visible=!ObjectLibrary.bitisoju(this.cawiluz.itemId,param1);
         }
         else
         {
            this.fynymah.visible=false;
         }
         return;
      }

      public function canHoldItem(param1:int) : Boolean {
         return true;
      }

      public function pimur() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.setItemSprite(this.cawiluz);
         return;
      }

      public function mymezit() : int {
         return this.cawiluz.itemId;
      }

      protected function getBackgroundColor() : int {
         return 5526612;
      }
   }
[/CLASS]
}