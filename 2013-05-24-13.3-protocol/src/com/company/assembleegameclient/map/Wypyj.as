package com.company.assembleegameclient.map
{
   import flash.geom.Vector3D;
   import flash.geom.Rectangle;
   import flash.geom.PerspectiveProjection;
   import flash.geom.Matrix3D;
   import com.company.assembleegameclient.objects.GameObject;
   import aaa.rotmg.config.UserConfig;
   import __AS3__.vec.Vector;
   import com.company.assembleegameclient.util.Hatuf;
   import com.company.util.Trig;


   public class Wypyj extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Wypyj() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.jodigy=new PerspectiveProjection();
         this.wToS_=new Matrix3D();
         this.qyfafi=new Matrix3D();
         this.wykerovu=new Matrix3D();
         this.zim=new Matrix3D();
         this.qiputis=new Vector3D();
         this.vabawoq=new Vector3D();
         this.kuleroby=new Vector3D();
         this.lyqazatu=new Vector3D();
         this.lyvase=new Vector.<Number>(16,true);
         super();
         this.jodigy.focalLength=3;
         this.jodigy.fieldOfView=48;
         this.zyzetiku=this.jodigy.toMatrix3D();
         this.zim.appendScale(50,50,50);
         this.vabawoq.x=0;
         this.vabawoq.y=0;
         this.vabawoq.z=-1;
         return;
      }

      public static const kifum:Vector3D = new Vector3D(0,0,1);

      private static const bikuqyt:Rectangle = new Rectangle(-300,-325,600,600);

      private static const fyhyhedy:Rectangle = new Rectangle(-300,-450,600,600);

      private static const loq:Rectangle = new Rectangle(-400,-325,800,600);

      private static const dajoneg:Rectangle = new Rectangle(-400,-275,800,500);

      public var x_:Number;

      public var y_:Number;

      public var z_:Number;

      public var angleRad_:Number;

      public var cykuwito:Rectangle;

      public var jodigy:PerspectiveProjection;

      public var maxDist_:Number;

      public var fuv:Number;

      public var sypefidun:Boolean = false;

      public var wToS_:Matrix3D;

      public var qyfafi:Matrix3D;

      public var wykerovu:Matrix3D;

      public var zyzetiku:Matrix3D;

      private var zim:Matrix3D;

      private var qiputis:Vector3D;

      private var vabawoq:Vector3D;

      private var kuleroby:Vector3D;

      private var lyqazatu:Vector3D;

      private var naz:Boolean = false;

      private var zekaz:Number = 0;

      public function configureCamera(param1:GameObject, param2:Boolean) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc3_:Rectangle = UserConfig.data_.centerOnPlayer?bikuqyt:fyhyhedy;
         if(UserConfig.gyry)
         {
            if(!UserConfig.wume)
            {
               _loc3_=loq;
            }
            else
            {
               _loc3_=dajoneg;
            }
         }
         var _loc4_:Number = UserConfig.data_.cameraAngle;
         this.configure(param1.x_,param1.y_,12,_loc4_,_loc3_,false);
         this.sypefidun=param2;
         return;
      }

      public function startJitter() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.naz=true;
         this.zekaz=0;
         return;
      }

      private const fezinu:Number = 0.5;

      private const fowylamyk:int = 10000;

      public function update(param1:Number) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if((this.naz)&&this.zekaz<this.fezinu)
         {
            this.zekaz=this.zekaz+param1*this.fezinu/this.fowylamyk;
            if(this.zekaz>this.fezinu)
            {
               this.zekaz=this.fezinu;
            }
         }
         return;
      }

      private var lyvase:Vector.<Number>;

      public function configure(param1:Number, param2:Number, param3:Number, param4:Number, param5:Rectangle, param6:Boolean) : void {
         var _loc10_:* = true;
         var _loc11_:* = false;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         if(this.naz)
         {
            param1=param1+Hatuf.melemy(this.zekaz);
            param2=param2+Hatuf.melemy(this.zekaz);
         }
         this.x_=param1;
         this.y_=param2;
         this.z_=param3;
         this.angleRad_=param4;
         this.cykuwito=param5;
         this.qiputis.x=param1;
         this.qiputis.y=param2;
         this.qiputis.z=param3;
         this.lyqazatu.x=Math.cos(this.angleRad_);
         this.lyqazatu.y=Math.sin(this.angleRad_);
         this.lyqazatu.z=0;
         this.kuleroby.x=Math.cos(this.angleRad_+Math.PI/2);
         this.kuleroby.y=Math.sin(this.angleRad_+Math.PI/2);
         this.kuleroby.z=0;
         this.lyvase[0]=this.lyqazatu.x;
         this.lyvase[1]=this.kuleroby.x;
         this.lyvase[2]=this.vabawoq.x;
         this.lyvase[3]=0;
         this.lyvase[4]=this.lyqazatu.y;
         this.lyvase[5]=this.kuleroby.y;
         this.lyvase[6]=this.vabawoq.y;
         this.lyvase[7]=0;
         this.lyvase[8]=this.lyqazatu.z;
         this.lyvase[9]=param6?this.kuleroby.z:-1;
         this.lyvase[10]=this.vabawoq.z;
         this.lyvase[11]=0;
         this.lyvase[12]=-this.qiputis.dotProduct(this.lyqazatu);
         this.lyvase[13]=-this.qiputis.dotProduct(this.kuleroby);
         this.lyvase[14]=-this.qiputis.dotProduct(this.vabawoq);
         this.lyvase[15]=1;
         this.qyfafi.rawData=this.lyvase;
         if(param6)
         {
            this.wykerovu=this.zyzetiku;
         }
         else
         {
            this.wykerovu=this.zim;
         }
         this.wToS_.identity();
         this.wToS_.append(this.qyfafi);
         this.wToS_.append(this.wykerovu);
         if(param6)
         {
            _loc7_=this.z_*Math.tan(this.jodigy.fieldOfView/2*Trig.byjik);
            this.maxDist_=Math.SQRT2*_loc7_*1.4;
         }
         else
         {
            _loc8_=this.cykuwito.width/2*50;
            _loc9_=this.cykuwito.height/2*50;
            this.maxDist_=Math.sqrt(_loc8_*_loc8_+_loc9_*_loc9_)+1;
         }
         this.fuv=this.maxDist_*this.maxDist_;
         return;
      }
   }

}