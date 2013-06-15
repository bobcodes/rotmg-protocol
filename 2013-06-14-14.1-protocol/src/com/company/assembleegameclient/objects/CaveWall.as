package com.company.assembleegameclient.objects
{
   import flash.geom.Vector3D;
   import flash.display.BitmapData;
   import com.company.assembleegameclient.engine3d.ObjectFace3D;
   import __AS3__.vec.Vector;


   public class CaveWall extends ConnectedObject
   {
      public function CaveWall(param1:XML) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super(param1);
         return;
      }

      override protected function buildDot() : void {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc1_:Vector3D = new Vector3D(-0.25-Math.random()*0.25,-0.25-Math.random()*0.25,0.0);
         var _loc2_:Vector3D = new Vector3D(0.25+Math.random()*0.25,-0.25-Math.random()*0.25,0.0);
         var _loc3_:Vector3D = new Vector3D(0.25+Math.random()*0.25,0.25+Math.random()*0.25,0.0);
         var _loc4_:Vector3D = new Vector3D(-0.25-Math.random()*0.25,0.25+Math.random()*0.25,0.0);
         var _loc5_:Vector3D = new Vector3D(-0.25+Math.random()*0.5,-0.25+Math.random()*0.5,1);
         this.wegevu(null,texture_,_loc5_,_loc1_,_loc2_);
         this.wegevu(null,texture_,_loc5_,_loc2_,_loc3_);
         this.wegevu(null,texture_,_loc5_,_loc3_,_loc4_);
         this.wegevu(null,texture_,_loc5_,_loc4_,_loc1_);
         return;
      }

      override protected function buildShortLine() : void {
         var _loc9_:* = false;
         var _loc10_:* = true;
         var _loc1_:Vector3D = this.raramyly(0,0);
         var _loc2_:Vector3D = this.raramyly(0,3);
         var _loc3_:Vector3D = new Vector3D(0.25+Math.random()*0.25,0.25+Math.random()*0.25,0.0);
         var _loc4_:Vector3D = new Vector3D(-0.25-Math.random()*0.25,0.25+Math.random()*0.25,0.0);
         var _loc5_:Vector3D = this.raramyly(0,1);
         var _loc6_:Vector3D = this.raramyly(0,2);
         var _loc7_:Vector3D = new Vector3D(Math.random()*0.25,Math.random()*0.25,0.5);
         var _loc8_:Vector3D = new Vector3D(Math.random()*-0.25,Math.random()*0.25,0.5);
         this.wegevu(null,texture_,_loc5_,_loc8_,_loc4_,_loc1_);
         this.wegevu(null,texture_,_loc8_,_loc7_,_loc3_,_loc4_);
         this.wegevu(null,texture_,_loc7_,_loc6_,_loc2_,_loc3_);
         this.wegevu(null,texture_,_loc5_,_loc6_,_loc7_,_loc8_);
         return;
      }

      override protected function buildL() : void {
         var _loc11_:* = false;
         var _loc12_:* = true;
         var _loc1_:Vector3D = this.raramyly(0,0);
         var _loc2_:Vector3D = this.raramyly(0,3);
         var _loc3_:Vector3D = this.raramyly(1,0);
         var _loc4_:Vector3D = this.raramyly(1,3);
         var _loc5_:Vector3D = new Vector3D(-Math.random()*0.25,Math.random()*0.25,0);
         var _loc6_:Vector3D = this.raramyly(0,1);
         var _loc7_:Vector3D = this.raramyly(0,2);
         var _loc8_:Vector3D = this.raramyly(1,1);
         var _loc9_:Vector3D = this.raramyly(1,2);
         var _loc10_:Vector3D = new Vector3D(Math.random()*0.25,-Math.random()*0.25,1);
         this.wegevu(null,texture_,_loc6_,_loc10_,_loc5_,_loc1_);
         this.wegevu(null,texture_,_loc10_,_loc9_,_loc4_,_loc5_);
         this.wegevu(N2,texture_,_loc8_,_loc7_,_loc2_,_loc3_);
         this.wegevu(null,texture_,_loc6_,_loc7_,_loc8_,_loc9_,_loc10_);
         return;
      }

      override protected function buildLine() : void {
         var _loc9_:* = false;
         var _loc10_:* = true;
         var _loc1_:Vector3D = this.raramyly(0,0);
         var _loc2_:Vector3D = this.raramyly(0,3);
         var _loc3_:Vector3D = this.raramyly(2,3);
         var _loc4_:Vector3D = this.raramyly(2,0);
         var _loc5_:Vector3D = this.raramyly(0,1);
         var _loc6_:Vector3D = this.raramyly(0,2);
         var _loc7_:Vector3D = this.raramyly(2,2);
         var _loc8_:Vector3D = this.raramyly(2,1);
         this.wegevu(N7,texture_,_loc5_,_loc8_,_loc4_,_loc1_);
         this.wegevu(N3,texture_,_loc7_,_loc6_,_loc2_,_loc3_);
         this.wegevu(null,texture_,_loc5_,_loc6_,_loc7_,_loc8_);
         return;
      }

      override protected function buildT() : void {
         var _loc13_:* = true;
         var _loc14_:* = false;
         var _loc1_:Vector3D = this.raramyly(0,0);
         var _loc2_:Vector3D = this.raramyly(0,3);
         var _loc3_:Vector3D = this.raramyly(1,0);
         var _loc4_:Vector3D = this.raramyly(1,3);
         var _loc5_:Vector3D = this.raramyly(3,3);
         var _loc6_:Vector3D = this.raramyly(3,0);
         var _loc7_:Vector3D = this.raramyly(0,1);
         var _loc8_:Vector3D = this.raramyly(0,2);
         var _loc9_:Vector3D = this.raramyly(1,1);
         var _loc10_:Vector3D = this.raramyly(1,2);
         var _loc11_:Vector3D = this.raramyly(3,2);
         var _loc12_:Vector3D = this.raramyly(3,1);
         this.wegevu(N2,texture_,_loc9_,_loc8_,_loc2_,_loc3_);
         this.wegevu(null,texture_,_loc11_,_loc10_,_loc4_,_loc5_);
         this.wegevu(N0,texture_,_loc7_,_loc12_,_loc6_,_loc1_);
         this.wegevu(null,texture_,_loc7_,_loc8_,_loc9_,_loc10_,_loc11_,_loc12_);
         return;
      }

      override protected function buildCross() : void {
         var _loc17_:* = true;
         var _loc18_:* = false;
         var _loc1_:Vector3D = this.raramyly(0,0);
         var _loc2_:Vector3D = this.raramyly(0,3);
         var _loc3_:Vector3D = this.raramyly(1,0);
         var _loc4_:Vector3D = this.raramyly(1,3);
         var _loc5_:Vector3D = this.raramyly(2,3);
         var _loc6_:Vector3D = this.raramyly(2,0);
         var _loc7_:Vector3D = this.raramyly(3,3);
         var _loc8_:Vector3D = this.raramyly(3,0);
         var _loc9_:Vector3D = this.raramyly(0,1);
         var _loc10_:Vector3D = this.raramyly(0,2);
         var _loc11_:Vector3D = this.raramyly(1,1);
         var _loc12_:Vector3D = this.raramyly(1,2);
         var _loc13_:Vector3D = this.raramyly(2,2);
         var _loc14_:Vector3D = this.raramyly(2,1);
         var _loc15_:Vector3D = this.raramyly(3,2);
         var _loc16_:Vector3D = this.raramyly(3,1);
         this.wegevu(N2,texture_,_loc11_,_loc10_,_loc2_,_loc3_);
         this.wegevu(N4,texture_,_loc13_,_loc12_,_loc4_,_loc5_);
         this.wegevu(N6,texture_,_loc15_,_loc14_,_loc6_,_loc7_);
         this.wegevu(N0,texture_,_loc9_,_loc16_,_loc8_,_loc1_);
         this.wegevu(null,texture_,_loc9_,_loc10_,_loc11_,_loc12_,_loc13_,_loc14_,_loc15_,_loc16_);
         return;
      }

      protected function raramyly(param1:int, param2:int) : Vector3D {
         var _loc10_:* = false;
         var _loc11_:* = true;
         var _loc6_:* = 0;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc3_:int = x_;
         var _loc4_:int = y_;
         var _loc5_:int = (param1+rotation_)%4;
         switch(null)
         {
            case 1:
               _loc3_++;
               break;
            case 2:
               _loc4_++;
               break;
         }
         switch(param2)
         {
            case 0:
            case 3:
               _loc6_=15+(_loc3_*1259^_loc4_*2957)%35;
               break;
            case 1:
            case 2:
               _loc6_=3+(_loc3_*2179^_loc4_*1237)%35;
               break;
         }
         switch(param2)
         {
            case 0:
               _loc7_=-_loc6_/100;
               _loc8_=0.0;
               break;
            case 1:
               _loc7_=-_loc6_/100;
               _loc8_=1;
               break;
            case 2:
               _loc7_=_loc6_/100;
               _loc8_=1;
               break;
            case 3:
               _loc7_=_loc6_/100;
               _loc8_=0.0;
               break;
         }
         switch(param1)
         {
            case 0:
               return new Vector3D(_loc7_,-0.5,_loc8_);
            case 1:
               return new Vector3D(0.5,_loc7_,_loc8_);
            case 2:
               return new Vector3D(_loc7_,0.5,_loc8_);
            case 3:
               return new Vector3D(-0.5,_loc7_,_loc8_);
            default:
               return null;
         }
      }

      protected function wegevu(param1:Vector3D, param2:BitmapData, ... rest) : void {
         var _loc10_:* = true;
         var _loc11_:* = false;
         var _loc5_:Vector3D = null;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc4_:int = gikasy.vL_.length/3;
         for each (_loc5_ in rest)
         {
            gikasy.vL_.push(_loc5_.x,_loc5_.y,_loc5_.z);
         }
         _loc6_=gikasy.faces_.length;
         if(rest.length==4)
         {
            gikasy.uvts_.push(0,0,0,1,0,0,1,1,0,0,1,0);
            if(Math.random()<0.5)
            {
               new Vector.<int>(3)[0]=_loc4_;
               new Vector.<int>(3)[1]=_loc4_+1;
               new Vector.<int>(3)[2]=_loc4_+3;
               new Vector.<int>(3)[0]=_loc4_+1;
               new Vector.<int>(3)[1]=_loc4_+2;
               new Vector.<int>(3)[2]=_loc4_+3;
               gikasy.faces_.push(new ObjectFace3D(gikasy,new Vector.<int>(3)),new ObjectFace3D(gikasy,new Vector.<int>(3)));
            }
            else
            {
               new Vector.<int>(3)[0]=_loc4_;
               new Vector.<int>(3)[1]=_loc4_+2;
               new Vector.<int>(3)[2]=_loc4_+3;
               new Vector.<int>(3)[0]=_loc4_;
               new Vector.<int>(3)[1]=_loc4_+1;
               new Vector.<int>(3)[2]=_loc4_+2;
               gikasy.faces_.push(new ObjectFace3D(gikasy,new Vector.<int>(3)),new ObjectFace3D(gikasy,new Vector.<int>(3)));
            }
         }
         else
         {
            if(rest.length==3)
            {
               gikasy.uvts_.push(0,0,0,0,1,0,1,1,0);
               new Vector.<int>(3)[0]=_loc4_;
               new Vector.<int>(3)[1]=_loc4_+1;
               new Vector.<int>(3)[2]=_loc4_+2;
               gikasy.faces_.push(new ObjectFace3D(gikasy,new Vector.<int>(3)));
            }
            else
            {
               if(rest.length==5)
               {
                  gikasy.uvts_.push(0.2,0.0,0.0,0.8,0.0,0.0,1,0.2,0.0,1,0.8,0.0,0.0,0.8,0.0);
                  new Vector.<int>(5)[0]=_loc4_;
                  new Vector.<int>(5)[1]=_loc4_+1;
                  new Vector.<int>(5)[2]=_loc4_+2;
                  new Vector.<int>(5)[3]=_loc4_+3;
                  new Vector.<int>(5)[4]=_loc4_+4;
                  gikasy.faces_.push(new ObjectFace3D(gikasy,new Vector.<int>(5)));
               }
               else
               {
                  if(rest.length==6)
                  {
                     gikasy.uvts_.push(0.0,0.0,0.0,0.2,0.0,0.0,1,0.2,0.0,1,0.8,0.0,0.0,0.8,0.0,0.0,0.2,0.0);
                     new Vector.<int>(6)[0]=_loc4_;
                     new Vector.<int>(6)[1]=_loc4_+1;
                     new Vector.<int>(6)[2]=_loc4_+2;
                     new Vector.<int>(6)[3]=_loc4_+3;
                     new Vector.<int>(6)[4]=_loc4_+4;
                     new Vector.<int>(6)[5]=_loc4_+5;
                     gikasy.faces_.push(new ObjectFace3D(gikasy,new Vector.<int>(6)));
                  }
                  else
                  {
                     if(rest.length==8)
                     {
                        gikasy.uvts_.push(0.0,0.0,0.0,0.2,0.0,0.0,1,0.2,0.0,1,0.8,0.0,0.8,1,0.0,0.2,1,0.0,0.0,0.8,0.0,0.0,0.2,0.0);
                        new Vector.<int>(8)[0]=_loc4_;
                        new Vector.<int>(8)[1]=_loc4_+1;
                        new Vector.<int>(8)[2]=_loc4_+2;
                        new Vector.<int>(8)[3]=_loc4_+3;
                        new Vector.<int>(8)[4]=_loc4_+4;
                        new Vector.<int>(8)[5]=_loc4_+5;
                        new Vector.<int>(8)[6]=_loc4_+6;
                        new Vector.<int>(8)[7]=_loc4_+7;
                        gikasy.faces_.push(new ObjectFace3D(gikasy,new Vector.<int>(8)));
                     }
                  }
               }
            }
         }
         if(!(param1==null)||!(param2==null))
         {
            _loc7_=_loc6_;
            while(_loc7_<gikasy.faces_.length)
            {
               gikasy.faces_[_loc7_].normalL_=param1;
               gikasy.faces_[_loc7_].texture_=param2;
               _loc7_++;
            }
         }
         return;
      }
   }

}