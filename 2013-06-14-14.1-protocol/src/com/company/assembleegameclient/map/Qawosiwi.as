package com.company.assembleegameclient.map
{
   import flash.geom.Vector3D;
   import flash.geom.Rectangle;
   import flash.geom.PerspectiveProjection;
   import flash.geom.Matrix3D;
   import com.company.assembleegameclient.objects.GameObject;
   import aaa.RotmgParameters.RotmgParameters;
   import __AS3__.vec.Vector;
   import com.company.assembleegameclient.util.Kev;
   import com.company.util.Trig;


   public class Qawosiwi extends Object
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Qawosiwi() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.qufihijo=new PerspectiveProjection();
         this.wToS_=new Matrix3D();
         this.tytaw=new Matrix3D();
         this.pefese=new Matrix3D();
         this.kiwa=new Matrix3D();
         this.migusota=new Vector3D();
         this.zer=new Vector3D();
         this.duhup=new Vector3D();
         this.kyh=new Vector3D();
         this.kuwecyry=new Vector.<Number>(16,true);
         super();
         this.qufihijo.focalLength=3;
         this.qufihijo.fieldOfView=48;
         this.bow=this.qufihijo.toMatrix3D();
         this.kiwa.appendScale(50,50,50);
         this.zer.x=0;
         this.zer.y=0;
         this.zer.z=-1;
         return;
      }

      public static const deliragas:Vector3D = new Vector3D(0,0,1);

      private static const rilifoj:Rectangle = new Rectangle(-300,-325,600,600);

      private static const tyliqowyz:Rectangle = new Rectangle(-300,-450,600,600);

      private static const diko:Rectangle = new Rectangle(-400,-325,800,600);

      private static const cole:Rectangle = new Rectangle(-400,-275,800,500);

      public var x_:Number;

      public var y_:Number;

      public var z_:Number;

      public var angleRad_:Number;

      public var pajaqe:Rectangle;

      public var qufihijo:PerspectiveProjection;

      public var maxDist_:Number;

      public var wycijaf:Number;

      public var syce:Boolean = false;

      public var wToS_:Matrix3D;

      public var tytaw:Matrix3D;

      public var pefese:Matrix3D;

      public var bow:Matrix3D;

      private var kiwa:Matrix3D;

      private var migusota:Vector3D;

      private var zer:Vector3D;

      private var duhup:Vector3D;

      private var kyh:Vector3D;

      private var faz:Boolean = false;

      private var hyky:Number = 0;

      public function configureCamera(param1:GameObject, param2:Boolean) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc3_:Rectangle = RotmgParameters.data_.centerOnPlayer?rilifoj:tyliqowyz;
         if(RotmgParameters.womo)
         {
            if(!RotmgParameters.cipiso)
            {
               _loc3_=diko;
            }
            else
            {
               _loc3_=cole;
            }
         }
         var _loc4_:Number = RotmgParameters.data_.cameraAngle;
         this.configure(param1.x_,param1.y_,12,_loc4_,_loc3_,false);
         this.syce=param2;
         return;
      }

      public function startJitter() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.faz=true;
         this.hyky=0;
         return;
      }

      private const lotez:Number = 0.5;

      private const daba:int = 10000;

      public function update(param1:Number) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if((this.faz)&&this.hyky<this.lotez)
         {
            this.hyky=this.hyky+param1*this.lotez/this.daba;
            if(this.hyky>this.lotez)
            {
               this.hyky=this.lotez;
            }
         }
         return;
      }

      private var kuwecyry:Vector.<Number>;

      public function configure(param1:Number, param2:Number, param3:Number, param4:Number, param5:Rectangle, param6:Boolean) : void {
         var _loc10_:* = false;
         var _loc11_:* = true;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         if(this.faz)
         {
            param1=param1+Kev.lopiq(this.hyky);
            param2=param2+Kev.lopiq(this.hyky);
         }
         this.x_=param1;
         this.y_=param2;
         this.z_=param3;
         this.angleRad_=param4;
         this.pajaqe=param5;
         this.migusota.x=param1;
         this.migusota.y=param2;
         this.migusota.z=param3;
         this.kyh.x=Math.cos(this.angleRad_);
         this.kyh.y=Math.sin(this.angleRad_);
         this.kyh.z=0;
         this.duhup.x=Math.cos(this.angleRad_+Math.PI/2);
         this.duhup.y=Math.sin(this.angleRad_+Math.PI/2);
         this.duhup.z=0;
         this.kuwecyry[0]=this.kyh.x;
         this.kuwecyry[1]=this.duhup.x;
         this.kuwecyry[2]=this.zer.x;
         this.kuwecyry[3]=0;
         this.kuwecyry[4]=this.kyh.y;
         this.kuwecyry[5]=this.duhup.y;
         this.kuwecyry[6]=this.zer.y;
         this.kuwecyry[7]=0;
         this.kuwecyry[8]=this.kyh.z;
         this.kuwecyry[9]=param6?this.duhup.z:-1;
         this.kuwecyry[10]=this.zer.z;
         this.kuwecyry[11]=0;
         this.kuwecyry[12]=-this.migusota.dotProduct(this.kyh);
         this.kuwecyry[13]=-this.migusota.dotProduct(this.duhup);
         this.kuwecyry[14]=-this.migusota.dotProduct(this.zer);
         this.kuwecyry[15]=1;
         this.tytaw.rawData=this.kuwecyry;
         if(param6)
         {
            this.pefese=this.bow;
         }
         else
         {
            this.pefese=this.kiwa;
         }
         this.wToS_.identity();
         this.wToS_.append(this.tytaw);
         this.wToS_.append(this.pefese);
         if(param6)
         {
            _loc7_=this.z_*Math.tan(this.qufihijo.fieldOfView/2*Trig.totugiwu);
            this.maxDist_=Math.SQRT2*_loc7_*1.4;
         }
         else
         {
            _loc8_=this.pajaqe.width/2*50;
            _loc9_=this.pajaqe.height/2*50;
            this.maxDist_=Math.sqrt(_loc8_*_loc8_+_loc9_*_loc9_)+1;
         }
         this.wycijaf=this.maxDist_*this.maxDist_;
         return;
      }
   }

}