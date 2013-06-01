package com.company.assembleegameclient.ui
{
[CLASS525]   import flash.display.Sprite;
   import flash.geom.Matrix;
   import flash.filters.ColorMatrixFilter;
   import com.company.util.MoreColorUtil;
   import flash.display.Bitmap;
   import flash.display.GraphicsSolidFill;
   import flash.display.GraphicsPath;
   import __AS3__.vec.Vector;
   import flash.display.IGraphicsData;
   import flash.geom.Point;
   import pudev.Sinobyf;
   import com.company.util.Nosupygu;
   import flash.display.BitmapData;
   import com.company.util.AssetLibrary;
   import jutesesel.Qibigagal;
   import totuhare.Javo;


   public class Slot extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Slot(param1:int, param2:int, param3:Array) {
         var _loc4_:* = true;
         var _loc5_:* = false;
         this.coboj=new GraphicsSolidFill(5526612,1);
         this.path_=new GraphicsPath(new Vector.<int>(),new Vector.<Number>());
         new Vector.<IGraphicsData>(3)[0]=this.coboj;
         new Vector.<IGraphicsData>(3)[1]=this.path_;
         new Vector.<IGraphicsData>(3)[2]=Nosupygu.END_FILL;
         this.graphicsData_=new Vector.<IGraphicsData>(3);
         super();
         this.type_=param1;
         this.mocy=param2;
         this.dyjafeji=param3;
         this.qafu();
         return;
      }

      public static const subaquzi:Matrix = new Matrix();

      public static const zalacukew:int = 0;

      public static const leba:int = 1;

      public static const cebawakag:int = 2;

      public static const doqelyk:int = 3;

      public static const zow:int = 4;

      public static const wefagyf:int = 5;

      public static const mohi:int = 6;

      public static const natofe:int = 7;

      public static const jevesor:int = 8;

      public static const filom:int = 9;

      public static const myki:int = 10;

      public static const gewujil:int = 11;

      public static const dore:int = 12;

      public static const bokuvihig:int = 13;

      public static const godupek:int = 14;

      public static const wepotat:int = 15;

      public static const bisibizo:int = 16;

      public static const semyw:int = 17;

      public static const moj:int = 18;

      public static const hujipaja:int = 19;

      public static const warul:int = 20;

      public static const cuc:int = 21;

      public static const sygi:int = 22;

      public static const pizyhopa:int = 23;

      public static const giboc:int = 24;

      public static const WIDTH:int = 40;

      public static const HEIGHT:int = 40;

      public static const BORDER:int = 4;

      public static function ganahe(param1:int) : String {
         var _loc3_:* = true;
         var _loc4_:* = false;
         switch(null)
         {
            case zalacukew:
               return "Any";
            case leba:
               return "Sword";
            case cebawakag:
               return "Dagger";
            case doqelyk:
               return "Bow";
            case zow:
               return "Tome";
            case wefagyf:
               return "Shield";
            case mohi:
               return "Leather Armor";
            case natofe:
               return "Armor";
            case jevesor:
               return "Wand";
            case filom:
               return "Accessory";
            case myki:
               return "Potion";
            case gewujil:
               return "Spell";
            case dore:
               return "Holy Seal";
            case bokuvihig:
               return "Cloak";
            case godupek:
               return "Robe";
            case wepotat:
               return "Quiver";
            case bisibizo:
               return "Helm";
            case semyw:
               return "Staff";
            case moj:
               return "Poison";
            case hujipaja:
               return "Skull";
            case warul:
               return "Trap";
            case cuc:
               return "Orb";
            case sygi:
               return "Prism";
            case pizyhopa:
               return "Scepter";
            case giboc:
               return "Shuriken";
            default:
               return "Invalid Type!";
         }
      }

      private static const syjalofu:ColorMatrixFilter = new ColorMatrixFilter(MoreColorUtil.nuk(3552822));

      public var type_:int;

      public var mocy:int;

      public var dyjafeji:Array;

      public var vaqahyca:Bitmap;

      protected var coboj:GraphicsSolidFill;

      protected var path_:GraphicsPath;

      private var graphicsData_:Vector.<IGraphicsData>;

      protected function mur(param1:int, param2:int, param3:Boolean) : Point {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc4_:Point = new Point();
         switch(null)
         {
            case filom:
               _loc4_.x=param1==2878?0:-2;
               _loc4_.y=param3?-2:0;
               break;
            case gewujil:
               _loc4_.y=-2;
               break;
         }
         return _loc4_;
      }

      protected function qafu() : void {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc4_:Point = null;
         var _loc5_:Sinobyf = null;
         Nosupygu.jyrodepu(this.path_);
         Nosupygu.secebeq(0,0,WIDTH,HEIGHT,4,this.dyjafeji,this.path_);
         graphics.clear();
         graphics.drawGraphicsData(this.graphicsData_);
         var _loc1_:BitmapData = null;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         switch(null)
         {
            case zalacukew:
               break;
            case leba:
               _loc1_=AssetLibrary.zovy("lofiObj5",48);
               break;
            case cebawakag:
               _loc1_=AssetLibrary.zovy("lofiObj5",96);
               break;
            case doqelyk:
               _loc1_=AssetLibrary.zovy("lofiObj5",80);
               break;
            case zow:
               _loc1_=AssetLibrary.zovy("lofiObj6",80);
               break;
            case wefagyf:
               _loc1_=AssetLibrary.zovy("lofiObj6",112);
               break;
            case mohi:
               _loc1_=AssetLibrary.zovy("lofiObj5",0);
               break;
            case natofe:
               _loc1_=AssetLibrary.zovy("lofiObj5",32);
               break;
            case jevesor:
               _loc1_=AssetLibrary.zovy("lofiObj5",64);
               break;
            case filom:
               _loc1_=AssetLibrary.zovy("lofiObj",44);
               break;
            case gewujil:
               _loc1_=AssetLibrary.zovy("lofiObj6",64);
               break;
            case dore:
               _loc1_=AssetLibrary.zovy("lofiObj6",160);
               break;
            case bokuvihig:
               _loc1_=AssetLibrary.zovy("lofiObj6",32);
               break;
            case godupek:
               _loc1_=AssetLibrary.zovy("lofiObj5",16);
               break;
            case wepotat:
               _loc1_=AssetLibrary.zovy("lofiObj6",48);
               break;
            case bisibizo:
               _loc1_=AssetLibrary.zovy("lofiObj6",96);
               break;
            case semyw:
               _loc1_=AssetLibrary.zovy("lofiObj5",112);
               break;
            case moj:
               _loc1_=AssetLibrary.zovy("lofiObj6",128);
               break;
            case hujipaja:
               _loc1_=AssetLibrary.zovy("lofiObj6",0);
               break;
            case warul:
               _loc1_=AssetLibrary.zovy("lofiObj6",16);
               break;
            case cuc:
               _loc1_=AssetLibrary.zovy("lofiObj6",144);
               break;
            case sygi:
               _loc1_=AssetLibrary.zovy("lofiObj6",176);
               break;
            case pizyhopa:
               _loc1_=AssetLibrary.zovy("lofiObj6",192);
               break;
         }
         if(this.vaqahyca==null)
         {
            if(_loc1_!=null)
            {
               _loc4_=this.mur(-1,this.type_,true);
               this.vaqahyca=new Bitmap(_loc1_);
               this.vaqahyca.x=BORDER+_loc4_.x;
               this.vaqahyca.y=BORDER+_loc4_.y;
               this.vaqahyca.scaleX=4;
               this.vaqahyca.scaleY=4;
               this.vaqahyca.filters=[syjalofu];
               addChild(this.vaqahyca);
            }
            else
            {
               if(this.mocy>0)
               {
                  _loc5_=Qibigagal.husuha().getInstance(Sinobyf);
                  _loc1_=_loc5_.make(new Javo(String(this.mocy)),26,3552822,true,subaquzi,false);
                  this.vaqahyca=new Bitmap(_loc1_);
                  this.vaqahyca.x=WIDTH/2-_loc1_.width/2;
                  this.vaqahyca.y=HEIGHT/2-18;
                  addChild(this.vaqahyca);
               }
            }
         }
         return;
      }
   }
[/CLASS]
}