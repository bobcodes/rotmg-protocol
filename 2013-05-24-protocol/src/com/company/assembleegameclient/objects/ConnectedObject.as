package com.company.assembleegameclient.objects
{
   import flash.utils.Dictionary;
   import flash.geom.Vector3D;
   import __AS3__.vec.Vector;
   import flash.display.IGraphicsData;
   import com.company.assembleegameclient.map.Wypyj;
   import com.company.assembleegameclient.engine3d.ObjectFace3D;
   import flash.display.BitmapData;
   import com.company.assembleegameclient.map.Square;
   import flash.geom.Utils3D;
   import com.company.assembleegameclient.engine3d.Gokot;


   public class ConnectedObject extends GameObject
   {

      public function ConnectedObject(param1:XML) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super(param1);
         kyjon=false;
         return;
      }

      protected static const cogete:int = 0;

      protected static const ruseg:int = 1;

      protected static const jemofysu:int = 2;

      protected static const vip:int = 3;

      protected static const vavevu:int = 4;

      protected static const wasynifeb:int = 5;

      private static var soroq:Dictionary = null;

      private static function init() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         soroq=new Dictionary();
         rakygidoj(33686018,cogete);
         rakygidoj(16908802,ruseg);
         rakygidoj(16843266,jemofysu);
         rakygidoj(16908546,vip);
         rakygidoj(16843265,vavevu);
         rakygidoj(16843009,wasynifeb);
         return;
      }

      private static function mef(param1:int) : ConnectedResults {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(soroq==null)
         {
            init();
         }
         var _loc2_:* = param1&252645135;
         return soroq[_loc2_];
      }

      private static function rakygidoj(param1:int, param2:int) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc4_:* = 0;
         var _loc3_:* = 0;
         while(_loc3_<4)
         {
            if(soroq.hasOwnProperty(param1))
            {
            }
            else
            {
               soroq[param1]=new ConnectedResults(param2,_loc3_);
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

      override public function draw(param1:Vector.<IGraphicsData>, param2:Wypyj, param3:int) : void {
         var _loc11_:* = true;
         var _loc12_:* = false;
         var _loc4_:ObjectFace3D = null;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:BitmapData = null;
         var _loc8_:Square = null;
         if(moc==null)
         {
            this.vojyr();
         }
         Utils3D.projectVectors(param2.wToS_,moc.vW_,moc.vS_,moc.uvts_);
         for each (_loc4_ in moc.faces_)
         {
            _loc5_=_loc4_.heqov.x>0.4?1:_loc4_.heqov.x<-0.4?-1:0;
            _loc6_=_loc4_.heqov.y>0.4?1:_loc4_.heqov.y<-0.4?-1:0;
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

      public function vojyr() : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         moc=new Gokot();
         var _loc1_:ConnectedResults = mef(sowej);
         if(_loc1_==null)
         {
            moc=null;
            return;
         }
         this.rotation_=_loc1_.rotation_;
         switch(_loc1_.type_)
         {
            case cogete:
               this.buildDot();
               break;
            case ruseg:
               this.buildShortLine();
               break;
            case jemofysu:
               this.buildL();
               break;
            case vip:
               this.buildLine();
               break;
            case vavevu:
               this.buildT();
               break;
            case wasynifeb:
               this.buildCross();
               break;
            default:
               moc=null;
               return;
         }
         moc.setPosition(x_,y_,0,this.rotation_*90);
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
