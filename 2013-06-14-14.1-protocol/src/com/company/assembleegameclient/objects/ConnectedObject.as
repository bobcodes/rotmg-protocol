package com.company.assembleegameclient.objects
{
   import flash.utils.Dictionary;
   import flash.geom.Vector3D;
   import __AS3__.vec.Vector;
   import flash.display.IGraphicsData;
   import com.company.assembleegameclient.map.Qawosiwi;
   import com.company.assembleegameclient.engine3d.ObjectFace3D;
   import flash.display.BitmapData;
   import com.company.assembleegameclient.map.Square;
   import flash.geom.Utils3D;
   import com.company.assembleegameclient.engine3d.Vutyrut;


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
         budav=false;
         return;
      }

      protected static const kin:int = 0;

      protected static const liwac:int = 1;

      protected static const lip:int = 2;

      protected static const gocorajef:int = 3;

      protected static const vinevek:int = 4;

      protected static const maqiwegyr:int = 5;

      private static var wediku:Dictionary = null;

      private static function init() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         wediku=new Dictionary();
         qozozanuk(33686018,kin);
         qozozanuk(16908802,liwac);
         qozozanuk(16843266,lip);
         qozozanuk(16908546,gocorajef);
         qozozanuk(16843265,vinevek);
         qozozanuk(16843009,maqiwegyr);
         return;
      }

      private static function hiru(param1:int) : ConnectedResults {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(wediku==null)
         {
            init();
         }
         var _loc2_:* = param1&252645135;
         return wediku[_loc2_];
      }

      private static function qozozanuk(param1:int, param2:int) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc4_:* = 0;
         var _loc3_:* = 0;
         while(_loc3_<4)
         {
            if(wediku.hasOwnProperty(param1))
            {
            }
            else
            {
               wediku[param1]=new ConnectedResults(param2,_loc3_);
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

      override public function draw(param1:Vector.<IGraphicsData>, param2:Qawosiwi, param3:int) : void {
         var _loc11_:* = true;
         var _loc12_:* = false;
         var _loc4_:ObjectFace3D = null;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:BitmapData = null;
         var _loc8_:Square = null;
         if(gikasy==null)
         {
            this.jamabeki();
         }
         Utils3D.projectVectors(param2.wToS_,gikasy.vW_,gikasy.vS_,gikasy.uvts_);
         for each (_loc4_ in gikasy.faces_)
         {
            _loc5_=_loc4_.fypogawob.x>0.4?1:_loc4_.fypogawob.x<-0.4?-1:0;
            _loc6_=_loc4_.fypogawob.y>0.4?1:_loc4_.fypogawob.y<-0.4?-1:0;
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

      public function jamabeki() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         gikasy=new Vutyrut();
         var _loc1_:ConnectedResults = hiru(nojigyroc);
         if(_loc1_==null)
         {
            gikasy=null;
            return;
         }
         this.rotation_=_loc1_.rotation_;
         switch(_loc1_.type_)
         {
            case kin:
               this.buildDot();
               break;
            case liwac:
               this.buildShortLine();
               break;
            case lip:
               this.buildL();
               break;
            case gocorajef:
               this.buildLine();
               break;
            case vinevek:
               this.buildT();
               break;
            case maqiwegyr:
               this.buildCross();
               break;
            default:
               gikasy=null;
               return;
         }
         gikasy.setPosition(x_,y_,0,this.rotation_*90);
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

}

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
