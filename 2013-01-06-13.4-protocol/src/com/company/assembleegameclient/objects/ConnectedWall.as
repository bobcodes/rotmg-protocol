package com.company.assembleegameclient.objects
{
[CLASS1288]   import flash.geom.Vector3D;
   import flash.display.BitmapData;
   import com.company.util.AssetLibrary;
   import __AS3__.vec.Vector;
   import com.company.assembleegameclient.engine3d.ObjectFace3D;


   public class ConnectedWall extends ConnectedObject
   {
      public function ConnectedWall(param1:XML) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super(param1);
         this.qyc=param1;
         if(param1.hasOwnProperty("BaseIndent"))
         {
            this.hizegi=0.5-Number(param1.BaseIndent);
         }
         if(param1.hasOwnProperty("TopIndent"))
         {
            this.huv=0.5-Number(param1.TopIndent);
         }
         if(param1.hasOwnProperty("Height"))
         {
            this.h_=Number(param1.Height);
         }
         this.dymytyj=!param1.hasOwnProperty("NoWallTextureRepeat");
         this.minen=!param1.hasOwnProperty("NoTopTextureRepeat");
         return;
      }

      protected var qyc:XML;

      protected var hizegi:Number = 0.5;

      protected var huv:Number = 0.25;

      protected var h_:Number = 1.0;

      protected var dymytyj:Boolean;

      protected var minen:Boolean;

      override protected function buildDot() : void {
         var _loc10_:* = false;
         var _loc11_:* = true;
         var _loc1_:Vector3D = new Vector3D(-this.hizegi,-this.hizegi,0);
         var _loc2_:Vector3D = new Vector3D(this.hizegi,-this.hizegi,0);
         var _loc3_:Vector3D = new Vector3D(this.hizegi,this.hizegi,0);
         var _loc4_:Vector3D = new Vector3D(-this.hizegi,this.hizegi,0);
         var _loc5_:Vector3D = new Vector3D(-this.huv,-this.huv,this.h_);
         var _loc6_:Vector3D = new Vector3D(this.huv,-this.huv,this.h_);
         var _loc7_:Vector3D = new Vector3D(this.huv,this.huv,this.h_);
         var _loc8_:Vector3D = new Vector3D(-this.huv,this.huv,this.h_);
         this.pojo(_loc6_,_loc5_,_loc1_,_loc2_,texture_,true,true);
         this.pojo(_loc7_,_loc6_,_loc2_,_loc3_,texture_,true,true);
         this.pojo(_loc5_,_loc8_,_loc4_,_loc1_,texture_,true,true);
         this.pojo(_loc8_,_loc7_,_loc3_,_loc4_,texture_,true,true);
         var _loc9_:BitmapData = texture_;
         if(this.qyc.hasOwnProperty("DotTexture"))
         {
            _loc9_=AssetLibrary.zovy(String(this.qyc.DotTexture.File),int(this.qyc.DotTexture.Index));
         }
         new Vector.<Number>(6)[0]=0.25;
         new Vector.<Number>(6)[1]=0.25;
         new Vector.<Number>(6)[2]=0.75;
         new Vector.<Number>(6)[3]=0.25;
         new Vector.<Number>(6)[4]=0.25;
         new Vector.<Number>(6)[5]=0.75;
         this.tut([_loc5_,_loc6_,_loc7_,_loc8_],new Vector.<Number>(6),_loc9_);
         return;
      }

      override protected function buildShortLine() : void {
         var _loc10_:* = true;
         var _loc11_:* = false;
         var _loc1_:Vector3D = new Vector3D(-this.hizegi,-0.5,0);
         var _loc2_:Vector3D = new Vector3D(this.hizegi,-0.5,0);
         var _loc3_:Vector3D = new Vector3D(this.hizegi,this.hizegi,0);
         var _loc4_:Vector3D = new Vector3D(-this.hizegi,this.hizegi,0);
         var _loc5_:Vector3D = new Vector3D(-this.huv,-0.5,this.h_);
         var _loc6_:Vector3D = new Vector3D(this.huv,-0.5,this.h_);
         var _loc7_:Vector3D = new Vector3D(this.huv,this.huv,this.h_);
         var _loc8_:Vector3D = new Vector3D(-this.huv,this.huv,this.h_);
         this.pojo(_loc7_,_loc6_,_loc2_,_loc3_,texture_,true,false);
         this.pojo(_loc5_,_loc8_,_loc4_,_loc1_,texture_,false,true);
         this.pojo(_loc8_,_loc7_,_loc3_,_loc4_,texture_,true,true);
         var _loc9_:BitmapData = texture_;
         if(this.qyc.hasOwnProperty("ShortLineTexture"))
         {
            _loc9_=AssetLibrary.zovy(String(this.qyc.ShortLineTexture.File),int(this.qyc.ShortLineTexture.Index));
         }
         new Vector.<Number>(6)[0]=0.25;
         new Vector.<Number>(6)[1]=0.0;
         new Vector.<Number>(6)[2]=0.75;
         new Vector.<Number>(6)[3]=0.0;
         new Vector.<Number>(6)[4]=0.25;
         new Vector.<Number>(6)[5]=0.75;
         this.tut([_loc5_,_loc6_,_loc7_,_loc8_],new Vector.<Number>(6),_loc9_);
         return;
      }

      override protected function buildL() : void {
         var _loc14_:* = true;
         var _loc15_:* = false;
         var _loc1_:Vector3D = new Vector3D(-this.hizegi,-0.5,0);
         var _loc2_:Vector3D = new Vector3D(this.hizegi,-0.5,0);
         var _loc3_:Vector3D = new Vector3D(this.hizegi,-this.hizegi,0);
         var _loc4_:Vector3D = new Vector3D(0.5,-this.hizegi,0);
         var _loc5_:Vector3D = new Vector3D(0.5,this.hizegi,0);
         var _loc6_:Vector3D = new Vector3D(-this.hizegi,this.hizegi,0);
         var _loc7_:Vector3D = new Vector3D(-this.huv,-0.5,this.h_);
         var _loc8_:Vector3D = new Vector3D(this.huv,-0.5,this.h_);
         var _loc9_:Vector3D = new Vector3D(this.huv,-this.huv,this.h_);
         var _loc10_:Vector3D = new Vector3D(0.5,-this.huv,this.h_);
         var _loc11_:Vector3D = new Vector3D(0.5,this.huv,this.h_);
         var _loc12_:Vector3D = new Vector3D(-this.huv,this.huv,this.h_);
         this.gyropuwip(_loc9_,_loc8_,_loc2_,_loc3_,texture_,N2,true);
         this.gyropuwip(_loc10_,_loc9_,_loc3_,_loc4_,texture_,N2,false);
         this.pojo(_loc12_,_loc11_,_loc5_,_loc6_,texture_,true,false);
         this.pojo(_loc7_,_loc12_,_loc6_,_loc1_,texture_,false,true);
         var _loc13_:BitmapData = texture_;
         if(this.qyc.hasOwnProperty("LTexture"))
         {
            _loc13_=AssetLibrary.zovy(String(this.qyc.LTexture.File),int(this.qyc.LTexture.Index));
         }
         new Vector.<Number>(6)[0]=0.25;
         new Vector.<Number>(6)[1]=0.0;
         new Vector.<Number>(6)[2]=0.75;
         new Vector.<Number>(6)[3]=0.0;
         new Vector.<Number>(6)[4]=0.25;
         new Vector.<Number>(6)[5]=0.75;
         this.tut([_loc7_,_loc8_,_loc9_,_loc10_,_loc11_,_loc12_],new Vector.<Number>(6),_loc13_);
         return;
      }

      override protected function buildLine() : void {
         var _loc10_:* = false;
         var _loc11_:* = true;
         var _loc1_:Vector3D = new Vector3D(-this.hizegi,-0.5,0);
         var _loc2_:Vector3D = new Vector3D(this.hizegi,-0.5,0);
         var _loc3_:Vector3D = new Vector3D(this.hizegi,0.5,0);
         var _loc4_:Vector3D = new Vector3D(-this.hizegi,0.5,0);
         var _loc5_:Vector3D = new Vector3D(-this.huv,-0.5,this.h_);
         var _loc6_:Vector3D = new Vector3D(this.huv,-0.5,this.h_);
         var _loc7_:Vector3D = new Vector3D(this.huv,0.5,this.h_);
         var _loc8_:Vector3D = new Vector3D(-this.huv,0.5,this.h_);
         this.pojo(_loc7_,_loc6_,_loc2_,_loc3_,texture_,false,false);
         this.pojo(_loc5_,_loc8_,_loc4_,_loc1_,texture_,false,false);
         var _loc9_:BitmapData = texture_;
         if(this.qyc.hasOwnProperty("LineTexture"))
         {
            _loc9_=AssetLibrary.zovy(String(this.qyc.LineTexture.File),int(this.qyc.LineTexture.Index));
         }
         new Vector.<Number>(6)[0]=0.25;
         new Vector.<Number>(6)[1]=0.0;
         new Vector.<Number>(6)[2]=0.75;
         new Vector.<Number>(6)[3]=0.0;
         new Vector.<Number>(6)[4]=0.25;
         new Vector.<Number>(6)[5]=1;
         this.tut([_loc5_,_loc6_,_loc7_,_loc8_],new Vector.<Number>(6),_loc9_);
         return;
      }

      override protected function buildT() : void {
         var _loc18_:* = true;
         var _loc19_:* = false;
         var _loc1_:Vector3D = new Vector3D(-this.hizegi,-0.5,0);
         var _loc2_:Vector3D = new Vector3D(this.hizegi,-0.5,0);
         var _loc3_:Vector3D = new Vector3D(this.hizegi,-this.hizegi,0);
         var _loc4_:Vector3D = new Vector3D(0.5,-this.hizegi,0);
         var _loc5_:Vector3D = new Vector3D(0.5,this.hizegi,0);
         var _loc6_:Vector3D = new Vector3D(-0.5,this.hizegi,0);
         var _loc7_:Vector3D = new Vector3D(-0.5,-this.hizegi,0);
         var _loc8_:Vector3D = new Vector3D(-this.hizegi,-this.hizegi,0);
         var _loc9_:Vector3D = new Vector3D(-this.huv,-0.5,this.h_);
         var _loc10_:Vector3D = new Vector3D(this.huv,-0.5,this.h_);
         var _loc11_:Vector3D = new Vector3D(this.huv,-this.huv,this.h_);
         var _loc12_:Vector3D = new Vector3D(0.5,-this.huv,this.h_);
         var _loc13_:Vector3D = new Vector3D(0.5,this.huv,this.h_);
         var _loc14_:Vector3D = new Vector3D(-0.5,this.huv,this.h_);
         var _loc15_:Vector3D = new Vector3D(-0.5,-this.huv,this.h_);
         var _loc16_:Vector3D = new Vector3D(-this.huv,-this.huv,this.h_);
         this.gyropuwip(_loc11_,_loc10_,_loc2_,_loc3_,texture_,N2,true);
         this.gyropuwip(_loc12_,_loc11_,_loc3_,_loc4_,texture_,N2,false);
         this.pojo(_loc14_,_loc13_,_loc5_,_loc6_,texture_,false,false);
         this.gyropuwip(_loc16_,_loc15_,_loc7_,_loc8_,texture_,N0,true);
         this.gyropuwip(_loc9_,_loc16_,_loc8_,_loc1_,texture_,N0,false);
         var _loc17_:BitmapData = texture_;
         if(this.qyc.hasOwnProperty("TTexture"))
         {
            _loc17_=AssetLibrary.zovy(String(this.qyc.TTexture.File),int(this.qyc.TTexture.Index));
         }
         new Vector.<Number>(6)[0]=0.25;
         new Vector.<Number>(6)[1]=0.0;
         new Vector.<Number>(6)[2]=0.75;
         new Vector.<Number>(6)[3]=0.0;
         new Vector.<Number>(6)[4]=0.25;
         new Vector.<Number>(6)[5]=0.25;
         this.tut([_loc9_,_loc10_,_loc11_,_loc12_,_loc13_,_loc14_,_loc15_,_loc16_],new Vector.<Number>(6),_loc17_);
         return;
      }

      override protected function buildCross() : void {
         var _loc26_:* = true;
         var _loc27_:* = false;
         var _loc1_:Vector3D = new Vector3D(-this.hizegi,-0.5,0);
         var _loc2_:Vector3D = new Vector3D(this.hizegi,-0.5,0);
         var _loc3_:Vector3D = new Vector3D(this.hizegi,-this.hizegi,0);
         var _loc4_:Vector3D = new Vector3D(0.5,-this.hizegi,0);
         var _loc5_:Vector3D = new Vector3D(0.5,this.hizegi,0);
         var _loc6_:Vector3D = new Vector3D(this.hizegi,this.hizegi,0);
         var _loc7_:Vector3D = new Vector3D(this.hizegi,0.5,0);
         var _loc8_:Vector3D = new Vector3D(-this.hizegi,0.5,0);
         var _loc9_:Vector3D = new Vector3D(-this.hizegi,this.hizegi,0);
         var _loc10_:Vector3D = new Vector3D(-0.5,this.hizegi,0);
         var _loc11_:Vector3D = new Vector3D(-0.5,-this.hizegi,0);
         var _loc12_:Vector3D = new Vector3D(-this.hizegi,-this.hizegi,0);
         var _loc13_:Vector3D = new Vector3D(-this.huv,-0.5,this.h_);
         var _loc14_:Vector3D = new Vector3D(this.huv,-0.5,this.h_);
         var _loc15_:Vector3D = new Vector3D(this.huv,-this.huv,this.h_);
         var _loc16_:Vector3D = new Vector3D(0.5,-this.huv,this.h_);
         var _loc17_:Vector3D = new Vector3D(0.5,this.huv,this.h_);
         var _loc18_:Vector3D = new Vector3D(this.huv,this.huv,this.h_);
         var _loc19_:Vector3D = new Vector3D(this.huv,0.5,this.h_);
         var _loc20_:Vector3D = new Vector3D(-this.huv,0.5,this.h_);
         var _loc21_:Vector3D = new Vector3D(-this.huv,this.huv,this.h_);
         var _loc22_:Vector3D = new Vector3D(-0.5,this.huv,this.h_);
         var _loc23_:Vector3D = new Vector3D(-0.5,-this.huv,this.h_);
         var _loc24_:Vector3D = new Vector3D(-this.huv,-this.huv,this.h_);
         this.gyropuwip(_loc15_,_loc14_,_loc2_,_loc3_,texture_,N2,true);
         this.gyropuwip(_loc16_,_loc15_,_loc3_,_loc4_,texture_,N2,false);
         this.gyropuwip(_loc18_,_loc17_,_loc5_,_loc6_,texture_,N4,true);
         this.gyropuwip(_loc19_,_loc18_,_loc6_,_loc7_,texture_,N4,false);
         this.gyropuwip(_loc21_,_loc20_,_loc8_,_loc9_,texture_,N6,true);
         this.gyropuwip(_loc22_,_loc21_,_loc9_,_loc10_,texture_,N6,false);
         this.gyropuwip(_loc24_,_loc23_,_loc11_,_loc12_,texture_,N0,true);
         this.gyropuwip(_loc13_,_loc24_,_loc12_,_loc1_,texture_,N0,false);
         var _loc25_:BitmapData = texture_;
         if(this.qyc.hasOwnProperty("CrossTexture"))
         {
            _loc25_=AssetLibrary.zovy(String(this.qyc.CrossTexture.File),int(this.qyc.CrossTexture.Index));
         }
         new Vector.<Number>(6)[0]=0.25;
         new Vector.<Number>(6)[1]=0.0;
         new Vector.<Number>(6)[2]=0.75;
         new Vector.<Number>(6)[3]=0.0;
         new Vector.<Number>(6)[4]=0.25;
         new Vector.<Number>(6)[5]=0.25;
         this.tut([_loc13_,_loc14_,_loc15_,_loc16_,_loc17_,_loc18_,_loc19_,_loc20_,_loc21_,_loc22_,_loc23_,_loc24_],new Vector.<Number>(6),_loc25_);
         return;
      }

      protected function pojo(param1:Vector3D, param2:Vector3D, param3:Vector3D, param4:Vector3D, param5:BitmapData, param6:Boolean, param7:Boolean) : void {
         var _loc11_:* = true;
         var _loc12_:* = false;
         var _loc8_:int = ryloby.vL_.length/3;
         ryloby.vL_.push(param1.x,param1.y,param1.z,param2.x,param2.y,param2.z,param3.x,param3.y,param3.z,param4.x,param4.y,param4.z);
         var _loc9_:Number = param6?-(this.hizegi-this.huv)/(1-this.hizegi-this.huv-(param7?this.hizegi-this.huv:0)):0.0;
         ryloby.uvts_.push(0,0,0,1,0,0,1,1,0,_loc9_,1,0);
         new Vector.<int>(4)[0]=_loc8_;
         new Vector.<int>(4)[1]=_loc8_+1;
         new Vector.<int>(4)[2]=_loc8_+2;
         new Vector.<int>(4)[3]=_loc8_+3;
         var _loc10_:ObjectFace3D = new ObjectFace3D(ryloby,new Vector.<int>(4));
         _loc10_.texture_=param5;
         _loc10_.bitmapFill_.repeat=this.dymytyj;
         ryloby.faces_.push(_loc10_);
         return;
      }

      protected function gyropuwip(param1:Vector3D, param2:Vector3D, param3:Vector3D, param4:Vector3D, param5:BitmapData, param6:Vector3D, param7:Boolean) : void {
         var _loc10_:* = true;
         var _loc11_:* = false;
         var _loc8_:int = ryloby.vL_.length/3;
         ryloby.vL_.push(param1.x,param1.y,param1.z,param2.x,param2.y,param2.z,param3.x,param3.y,param3.z,param4.x,param4.y,param4.z);
         if(param7)
         {
            ryloby.uvts_.push(-0.5+this.huv,0,0,0,0,0,0,0,0,-0.5+this.hizegi,1,0);
         }
         else
         {
            ryloby.uvts_.push(1,0,0,1.5-this.huv,0,0,0,0,0,1,1,0);
         }
         new Vector.<int>(4)[0]=_loc8_;
         new Vector.<int>(4)[1]=_loc8_+1;
         new Vector.<int>(4)[2]=_loc8_+2;
         new Vector.<int>(4)[3]=_loc8_+3;
         var _loc9_:ObjectFace3D = new ObjectFace3D(ryloby,new Vector.<int>(4));
         _loc9_.texture_=param5;
         _loc9_.bitmapFill_.repeat=this.dymytyj;
         _loc9_.normalL_=param6;
         ryloby.faces_.push(_loc9_);
         return;
      }

      protected function tut(param1:Array, param2:Vector.<Number>, param3:BitmapData) : void {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var _loc4_:int = ryloby.vL_.length/3;
         var _loc5_:Vector.<int> = new Vector.<int>();
         var _loc6_:uint = 0;
         while(_loc6_<param1.length)
         {
            ryloby.vL_.push(param1[_loc6_].x,param1[_loc6_].y,param1[_loc6_].z);
            _loc5_.push(_loc4_+_loc6_);
            if(_loc6_==0)
            {
               ryloby.uvts_.push(param2[0],param2[1],0);
            }
            else
            {
               if(_loc6_==1)
               {
                  ryloby.uvts_.push(param2[2],param2[3],0);
               }
               else
               {
                  if(_loc6_==param1.length-1)
                  {
                     ryloby.uvts_.push(param2[4],param2[5],0);
                  }
                  else
                  {
                     ryloby.uvts_.push(0,0,0);
                  }
               }
            }
            _loc6_++;
         }
         var _loc7_:ObjectFace3D = new ObjectFace3D(ryloby,_loc5_);
         _loc7_.texture_=param3;
         _loc7_.bitmapFill_.repeat=this.minen;
         ryloby.faces_.push(_loc7_);
         return;
      }
   }
[/CLASS]
}