package com.company.assembleegameclient.objects
{
[CLASS1286]   import flash.utils.Dictionary;
   import flash.geom.Vector3D;
   import __AS3__.vec.Vector;
   import flash.display.IGraphicsData;
   import com.company.assembleegameclient.map.Fot;
   import com.company.assembleegameclient.engine3d.ObjectFace3D;
   import flash.display.BitmapData;
   import com.company.assembleegameclient.map.Square;
   import flash.geom.Utils3D;
   import com.company.assembleegameclient.engine3d.Daburap;


   public class ConnectedObject extends GameObject
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function ConnectedObject(param1:XML) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super(param1);
         tovemamic=false;
         return;
      }

      protected static const sopuziro:int = 0;

      protected static const malojy:int = 1;

      protected static const hoze:int = 2;

      protected static const hebi:int = 3;

      protected static const nuzajib:int = 4;

      protected static const honaqapo:int = 5;

      private static var wiwoqyvat:Dictionary = null;

      private static function init() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         wiwoqyvat=new Dictionary();
         zetuzah(33686018,sopuziro);
         zetuzah(16908802,malojy);
         zetuzah(16843266,hoze);
         zetuzah(16908546,hebi);
         zetuzah(16843265,nuzajib);
         zetuzah(16843009,honaqapo);
         return;
      }

      private static function nowe(param1:int) : ConnectedResults {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(wiwoqyvat==null)
         {
            init();
         }
         var _loc2_:* = param1&252645135;
         return wiwoqyvat[_loc2_];
      }

      private static function zetuzah(param1:int, param2:int) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc4_:* = 0;
         var _loc3_:* = 0;
         while(_loc3_<4)
         {
            if(wiwoqyvat.hasOwnProperty(param1))
            {
            }
            else
            {
               wiwoqyvat[param1]=new ConnectedResults(param2,_loc3_);
               _loc4_=param1&255;
               param1=param1>>8|_loc4_<<24;
            }
            _loc3_++;
         }
         return;
      }

      protected static const N0:Vector3D = new Vector3D(-1,-1,0);

      protected static const N1:Vector3D = new Vector3D(0,-1,0);

      protected static const N2:Vector3D = new Vector3D(1,-1,0);

      protected static const N3:Vector3D = new Vector3D(1,0,0);

      protected static const N4:Vector3D = new Vector3D(1,1,0);

      protected static const N5:Vector3D = new Vector3D(0,1,0);

      protected static const N6:Vector3D = new Vector3D(-1,1,0);

      protected static const N7:Vector3D = new Vector3D(-1,0,0);

      protected static const N8:Vector3D = new Vector3D(0,0,1);

      protected var rotation_:int = 0;

      override public function draw(param1:Vector.<IGraphicsData>, param2:Fot, param3:int) : void {
         var _loc11_:* = true;
         var _loc12_:* = false;
         var _loc4_:ObjectFace3D = null;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:BitmapData = null;
         var _loc8_:Square = null;
         if(ryloby==null)
         {
            this.har();
         }
         Utils3D.projectVectors(param2.wToS_,ryloby.vW_,ryloby.vS_,ryloby.uvts_);
         for each (_loc4_ in ryloby.faces_)
         {
            _loc5_=_loc4_.rumaduro.x>0.4?1:_loc4_.rumaduro.x<-0.4?-1:0;
            _loc6_=_loc4_.rumaduro.y>0.4?1:_loc4_.rumaduro.y<-0.4?-1:0;
            _loc7_=_loc4_.texture_;
            if(!(_loc5_==0)||!(_loc6_==0))
            {
               _loc8_=map_.lookupSquare(x_+_loc5_,y_+_loc6_);
               if(_loc8_==null||_loc8_.texture_==null)
               {
                  _loc7_=null;
               }
            }
            _loc4_.draw(param1,0,_loc7_);
         }
         return;
      }

      public function har() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         ryloby=new Daburap();
         var _loc1_:ConnectedResults = nowe(jagodo);
         if(_loc1_==null)
         {
            ryloby=null;
            return;
         }
         this.rotation_=_loc1_.rotation_;
         switch(_loc1_.type_)
         {
            case sopuziro:
               this.buildDot();
               break;
            case malojy:
               this.buildShortLine();
               break;
            case hoze:
               this.buildL();
               break;
            case hebi:
               this.buildLine();
               break;
            case nuzajib:
               this.buildT();
               break;
            case honaqapo:
               this.buildCross();
               break;
            default:
               ryloby=null;
               return;
         }
         ryloby.setPosition(x_,y_,0,this.rotation_*90);
         return;
      }

      protected function buildDot() : void {
         return;
      }

      protected function buildShortLine() : void {
         return;
      }

      protected function buildL() : void {
         return;
      }

      protected function buildLine() : void {
         return;
      }

      protected function buildT() : void {
         return;
      }

      protected function buildCross() : void {
         return;
      }
   }
[/CLASS]
}[CLASS1287]

   class ConnectedResults extends Object
   {
      function ConnectedResults(param1:int, param2:int) {
         super();
         this.type_=param1;
         this.rotation_=param2;
         return;
      }

      public var type_:int;

      public var rotation_:int;
   }
[/CLASS]