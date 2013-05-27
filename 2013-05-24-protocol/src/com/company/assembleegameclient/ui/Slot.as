package com.company.assembleegameclient.ui
{
   import flash.display.Sprite;
   import flash.geom.Matrix;
   import flash.filters.ColorMatrixFilter;
   import com.company.util.MoreColorUtil;
   import flash.display.Bitmap;
   import flash.display.GraphicsSolidFill;
   import flash.display.GraphicsPath;
   import __AS3__.vec.Vector;
   import flash.display.IGraphicsData;
   import flash.geom.Point;
   import movimet.Jetadopuc;
   import com.company.util.Tizulo;
   import flash.display.BitmapData;
   import com.company.util.AssetLibrary;
   import jag.Giq;
   import nec.Nara;


   public class Slot extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Slot(param1:int, param2:int, param3:Array) {
         var _loc4_:* = true;
         var _loc5_:* = false;
         this.qofad=new GraphicsSolidFill(5526612,1);
         this.path_=new GraphicsPath(new Vector.<int>(),new Vector.<Number>());
         new Vector.<IGraphicsData>(3)[0]=this.qofad;
         new Vector.<IGraphicsData>(3)[1]=this.path_;
         new Vector.<IGraphicsData>(3)[2]=Tizulo.END_FILL;
         this.graphicsData_=new Vector.<IGraphicsData>(3);
         super();
         this.type_=param1;
         this.tupejilo=param2;
         this.noqitece=param3;
         this.tizyf();
         return;
      }

      public static const qafywo:Matrix = new Matrix();

      public static const nuzyf:int = 0;

      public static const bygevopij:int = 1;

      public static const cipyke:int = 2;

      public static const roget:int = 3;

      public static const decadefah:int = 4;

      public static const gipisonyl:int = 5;

      public static const ponuv:int = 6;

      public static const sareke:int = 7;

      public static const qudebuly:int = 8;

      public static const wyqofe:int = 9;

      public static const bejytypy:int = 10;

      public static const colalaw:int = 11;

      public static const jofew:int = 12;

      public static const mologud:int = 13;

      public static const varyrivi:int = 14;

      public static const jahapyqud:int = 15;

      public static const virega:int = 16;

      public static const habepejo:int = 17;

      public static const pebudilub:int = 18;

      public static const cowad:int = 19;

      public static const gyronahi:int = 20;

      public static const raneniwe:int = 21;

      public static const tidybiqi:int = 22;

      public static const feloj:int = 23;

      public static const jabuvaf:int = 24;

      public static const WIDTH:int = 40;

      public static const HEIGHT:int = 40;

      public static const BORDER:int = 4;

      public static function podumi(param1:int) : String {
         var _loc3_:* = true;
         var _loc4_:* = false;
         switch(param1)
         {
            case nuzyf:
               return "Any";
            case bygevopij:
               return "Sword";
            case cipyke:
               return "Dagger";
            case roget:
               return "Bow";
            case decadefah:
               return "Tome";
            case gipisonyl:
               return "Shield";
            case ponuv:
               return "Leather Armor";
            case sareke:
               return "Armor";
            case qudebuly:
               return "Wand";
            case wyqofe:
               return "Accessory";
            case bejytypy:
               return "Potion";
            case colalaw:
               return "Spell";
            case jofew:
               return "Holy Seal";
            case mologud:
               return "Cloak";
            case varyrivi:
               return "Robe";
            case jahapyqud:
               return "Quiver";
            case virega:
               return "Helm";
            case habepejo:
               return "Staff";
            case pebudilub:
               return "Poison";
            case cowad:
               return "Skull";
            case gyronahi:
               return "Trap";
            case raneniwe:
               return "Orb";
            case tidybiqi:
               return "Prism";
            case feloj:
               return "Scepter";
            case jabuvaf:
               return "Shuriken";
            default:
               return "Invalid Type!";
         }
      }

      private static const rotyb:ColorMatrixFilter = new ColorMatrixFilter(MoreColorUtil.rug(3552822));

      public var type_:int;

      public var tupejilo:int;

      public var noqitece:Array;

      public var zyt:Bitmap;

      protected var qofad:GraphicsSolidFill;

      protected var path_:GraphicsPath;

      private var graphicsData_:Vector.<IGraphicsData>;

      protected function siremi(param1:int, param2:int, param3:Boolean) : Point {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc4_:Point = new Point();
         switch(param2)
         {
            case wyqofe:
               _loc4_.x=param1==2878?0:-2;
               _loc4_.y=param3?-2:0;
               break;
            case colalaw:
               _loc4_.y=-2;
               break;
         }
         return _loc4_;
      }

      protected function tizyf() : void {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc4_:Point = null;
         var _loc5_:Jetadopuc = null;
         Tizulo.vomynaqu(this.path_);
         Tizulo.woforyzib(0,0,WIDTH,HEIGHT,4,this.noqitece,this.path_);
         graphics.clear();
         graphics.drawGraphicsData(this.graphicsData_);
         var _loc1_:BitmapData = null;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         switch(this.type_)
         {
            case nuzyf:
               break;
            case bygevopij:
               _loc1_=AssetLibrary.jeqycu("lofiObj5",48);
               break;
            case cipyke:
               _loc1_=AssetLibrary.jeqycu("lofiObj5",96);
               break;
            case roget:
               _loc1_=AssetLibrary.jeqycu("lofiObj5",80);
               break;
            case decadefah:
               _loc1_=AssetLibrary.jeqycu("lofiObj6",80);
               break;
            case gipisonyl:
               _loc1_=AssetLibrary.jeqycu("lofiObj6",112);
               break;
            case ponuv:
               _loc1_=AssetLibrary.jeqycu("lofiObj5",0);
               break;
            case sareke:
               _loc1_=AssetLibrary.jeqycu("lofiObj5",32);
               break;
            case qudebuly:
               _loc1_=AssetLibrary.jeqycu("lofiObj5",64);
               break;
            case wyqofe:
               _loc1_=AssetLibrary.jeqycu("lofiObj",44);
               break;
            case colalaw:
               _loc1_=AssetLibrary.jeqycu("lofiObj6",64);
               break;
            case jofew:
               _loc1_=AssetLibrary.jeqycu("lofiObj6",160);
               break;
            case mologud:
               _loc1_=AssetLibrary.jeqycu("lofiObj6",32);
               break;
            case varyrivi:
               _loc1_=AssetLibrary.jeqycu("lofiObj5",16);
               break;
            case jahapyqud:
               _loc1_=AssetLibrary.jeqycu("lofiObj6",48);
               break;
            case virega:
               _loc1_=AssetLibrary.jeqycu("lofiObj6",96);
               break;
            case habepejo:
               _loc1_=AssetLibrary.jeqycu("lofiObj5",112);
               break;
            case pebudilub:
               _loc1_=AssetLibrary.jeqycu("lofiObj6",128);
               break;
            case cowad:
               _loc1_=AssetLibrary.jeqycu("lofiObj6",0);
               break;
            case gyronahi:
               _loc1_=AssetLibrary.jeqycu("lofiObj6",16);
               break;
            case raneniwe:
               _loc1_=AssetLibrary.jeqycu("lofiObj6",144);
               break;
            case tidybiqi:
               _loc1_=AssetLibrary.jeqycu("lofiObj6",176);
               break;
            case feloj:
               _loc1_=AssetLibrary.jeqycu("lofiObj6",192);
               break;
         }
         if(this.zyt==null)
         {
            if(_loc1_!=null)
            {
               _loc4_=this.siremi(-1,this.type_,true);
               this.zyt=new Bitmap(_loc1_);
               this.zyt.x=BORDER+_loc4_.x;
               this.zyt.y=BORDER+_loc4_.y;
               this.zyt.scaleX=4;
               this.zyt.scaleY=4;
               this.zyt.filters=[rotyb];
               addChild(this.zyt);
            }
            else
            {
               if(this.tupejilo>0)
               {
                  _loc5_=Giq.kid().getInstance(Jetadopuc);
                  _loc1_=_loc5_.make(new Nara(String(this.tupejilo)),26,3552822,true,qafywo,false);
                  this.zyt=new Bitmap(_loc1_);
                  this.zyt.x=WIDTH/2-_loc1_.width/2;
                  this.zyt.y=HEIGHT/2-18;
                  addChild(this.zyt);
               }
            }
         }
         return;
      }
   }

}