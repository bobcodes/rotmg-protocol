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
   import hivysif.Pyzykyj;
   import com.company.util.Dyrejocu;
   import flash.display.BitmapData;
   import com.company.util.AssetLibrary;
   import sijizoh.Duq;
   import jediwip.Vofezuzy;


   public class Slot extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Slot(param1:int, param2:int, param3:Array) {
         var _loc4_:* = false;
         var _loc5_:* = true;
         this.visygody=new GraphicsSolidFill(5526612,1);
         this.path_=new GraphicsPath(new Vector.<int>(),new Vector.<Number>());
         new Vector.<IGraphicsData>(3)[0]=this.visygody;
         new Vector.<IGraphicsData>(3)[1]=this.path_;
         new Vector.<IGraphicsData>(3)[2]=Dyrejocu.END_FILL;
         this.graphicsData_=new Vector.<IGraphicsData>(3);
         super();
         this.type_=param1;
         this.nivywag=param2;
         this.qevezysas=param3;
         this.guviqejy();
         return;
      }

      public static const begatywy:Matrix = new Matrix();

      public static const tehi:int = 0;

      public static const kykeb:int = 1;

      public static const valasu:int = 2;

      public static const dof:int = 3;

      public static const nuzebu:int = 4;

      public static const juna:int = 5;

      public static const nuvep:int = 6;

      public static const ceci:int = 7;

      public static const pyfisete:int = 8;

      public static const fajyjubo:int = 9;

      public static const rajadotas:int = 10;

      public static const bajuqesu:int = 11;

      public static const nona:int = 12;

      public static const qiw:int = 13;

      public static const waca:int = 14;

      public static const das:int = 15;

      public static const rolyl:int = 16;

      public static const pevyb:int = 17;

      public static const juse:int = 18;

      public static const gose:int = 19;

      public static const zuribygi:int = 20;

      public static const pul:int = 21;

      public static const jegysyh:int = 22;

      public static const rypuwoqid:int = 23;

      public static const luliqiky:int = 24;

      public static const WIDTH:int = 40;

      public static const HEIGHT:int = 40;

      public static const BORDER:int = 4;

      public static function syconi(param1:int) : String {
         var _loc3_:* = false;
         var _loc4_:* = true;
         switch(null)
         {
            case tehi:
               return "Any";
            case kykeb:
               return "Sword";
            case valasu:
               return "Dagger";
            case dof:
               return "Bow";
            case nuzebu:
               return "Tome";
            case juna:
               return "Shield";
            case nuvep:
               return "Leather Armor";
            case ceci:
               return "Armor";
            case pyfisete:
               return "Wand";
            case fajyjubo:
               return "Accessory";
            case rajadotas:
               return "Potion";
            case bajuqesu:
               return "Spell";
            case nona:
               return "Holy Seal";
            case qiw:
               return "Cloak";
            case waca:
               return "Robe";
            case das:
               return "Quiver";
            case rolyl:
               return "Helm";
            case pevyb:
               return "Staff";
            case juse:
               return "Poison";
            case gose:
               return "Skull";
            case zuribygi:
               return "Trap";
            case pul:
               return "Orb";
            case jegysyh:
               return "Prism";
            case rypuwoqid:
               return "Scepter";
            case luliqiky:
               return "Shuriken";
            default:
               return "Invalid Type!";
         }
      }

      private static const gejeholaz:ColorMatrixFilter = new ColorMatrixFilter(MoreColorUtil.rojezukul(3552822));

      public var type_:int;

      public var nivywag:int;

      public var qevezysas:Array;

      public var qas:Bitmap;

      protected var visygody:GraphicsSolidFill;

      protected var path_:GraphicsPath;

      private var graphicsData_:Vector.<IGraphicsData>;

      protected function sovo(param1:int, param2:int, param3:Boolean) : Point {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc4_:Point = new Point();
         switch(null)
         {
            case fajyjubo:
               _loc4_.x=param1==2878?0:-2;
               _loc4_.y=param3?-2:0;
               break;
            case bajuqesu:
               _loc4_.y=-2;
               break;
         }
         return _loc4_;
      }

      protected function guviqejy() : void {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc4_:Point = null;
         var _loc5_:Pyzykyj = null;
         Dyrejocu.gorudy(this.path_);
         Dyrejocu.moluv(0,0,WIDTH,HEIGHT,4,this.qevezysas,this.path_);
         graphics.clear();
         graphics.drawGraphicsData(this.graphicsData_);
         var _loc1_:BitmapData = null;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         switch(null)
         {
            case tehi:
               break;
            case kykeb:
               _loc1_=AssetLibrary.tem("lofiObj5",48);
               break;
            case valasu:
               _loc1_=AssetLibrary.tem("lofiObj5",96);
               break;
            case dof:
               _loc1_=AssetLibrary.tem("lofiObj5",80);
               break;
            case nuzebu:
               _loc1_=AssetLibrary.tem("lofiObj6",80);
               break;
            case juna:
               _loc1_=AssetLibrary.tem("lofiObj6",112);
               break;
            case nuvep:
               _loc1_=AssetLibrary.tem("lofiObj5",0);
               break;
            case ceci:
               _loc1_=AssetLibrary.tem("lofiObj5",32);
               break;
            case pyfisete:
               _loc1_=AssetLibrary.tem("lofiObj5",64);
               break;
            case fajyjubo:
               _loc1_=AssetLibrary.tem("lofiObj",44);
               break;
            case bajuqesu:
               _loc1_=AssetLibrary.tem("lofiObj6",64);
               break;
            case nona:
               _loc1_=AssetLibrary.tem("lofiObj6",160);
               break;
            case qiw:
               _loc1_=AssetLibrary.tem("lofiObj6",32);
               break;
            case waca:
               _loc1_=AssetLibrary.tem("lofiObj5",16);
               break;
            case das:
               _loc1_=AssetLibrary.tem("lofiObj6",48);
               break;
            case rolyl:
               _loc1_=AssetLibrary.tem("lofiObj6",96);
               break;
            case pevyb:
               _loc1_=AssetLibrary.tem("lofiObj5",112);
               break;
            case juse:
               _loc1_=AssetLibrary.tem("lofiObj6",128);
               break;
            case gose:
               _loc1_=AssetLibrary.tem("lofiObj6",0);
               break;
            case zuribygi:
               _loc1_=AssetLibrary.tem("lofiObj6",16);
               break;
            case pul:
               _loc1_=AssetLibrary.tem("lofiObj6",144);
               break;
            case jegysyh:
               _loc1_=AssetLibrary.tem("lofiObj6",176);
               break;
            case rypuwoqid:
               _loc1_=AssetLibrary.tem("lofiObj6",192);
               break;
         }
         if(this.qas==null)
         {
            if(_loc1_!=null)
            {
               _loc4_=this.sovo(-1,this.type_,true);
               this.qas=new Bitmap(_loc1_);
               this.qas.x=BORDER+_loc4_.x;
               this.qas.y=BORDER+_loc4_.y;
               this.qas.scaleX=4;
               this.qas.scaleY=4;
               this.qas.filters=[gejeholaz];
               addChild(this.qas);
            }
            else
            {
               if(this.nivywag>0)
               {
                  _loc5_=Duq.pamazo().getInstance(Pyzykyj);
                  _loc1_=_loc5_.make(new Vofezuzy(String(this.nivywag)),26,3552822,true,begatywy,false);
                  this.qas=new Bitmap(_loc1_);
                  this.qas.x=WIDTH/2-_loc1_.width/2;
                  this.qas.y=HEIGHT/2-18;
                  addChild(this.qas);
               }
            }
         }
         return;
      }
   }

}