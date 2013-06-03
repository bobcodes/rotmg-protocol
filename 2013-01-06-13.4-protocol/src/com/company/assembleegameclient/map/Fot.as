package com.company.assembleegameclient.map
{
[CLASS863]   import flash.geom.Vector3D;
   import flash.geom.Rectangle;
   import flash.geom.PerspectiveProjection;
   import flash.geom.Matrix3D;
   import com.company.assembleegameclient.objects.GameObject;
   import aaa.Parameters;
   import __AS3__.vec.Vector;
   import com.company.assembleegameclient.util.Wijawo;
   import com.company.util.Trig;


   public class Fot extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Fot() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.jinuluku=new PerspectiveProjection();
         this.wToS_=new Matrix3D();
         this.wydikajab=new Matrix3D();
         this.cydybeca=new Matrix3D();
         this.dowik=new Matrix3D();
         this.muz=new Vector3D();
         this.jedof=new Vector3D();
         this.fyjihem=new Vector3D();
         this.doni=new Vector3D();
         this.tymul=new Vector.<Number>(16,true);
         super();
         this.jinuluku.focalLength=3;
         this.jinuluku.fieldOfView=48;
         this.zele=this.jinuluku.toMatrix3D();
         this.dowik.appendScale(50,50,50);
         this.jedof.x=0;
         this.jedof.y=0;
         this.jedof.z=-1;
         return;
      }

      public static const wiricok:Vector3D = new Vector3D(0,0,1);

      private static const sycobogow:Rectangle = new Rectangle(-300,-325,600,600);

      private static const doradu:Rectangle = new Rectangle(-300,-450,600,600);

      private static const quduzes:Rectangle = new Rectangle(-400,-325,800,600);

      private static const rudeme:Rectangle = new Rectangle(-400,-275,800,500);

      public var x_:Number;

      public var y_:Number;

      public var z_:Number;

      public var angleRad_:Number;

      public var wyly:Rectangle;

      public var jinuluku:PerspectiveProjection;

      public var maxDist_:Number;

      public var duluki:Number;

      public var dicybeco:Boolean = false;

      public var wToS_:Matrix3D;

      public var wydikajab:Matrix3D;

      public var cydybeca:Matrix3D;

      public var zele:Matrix3D;

      private var dowik:Matrix3D;

      private var muz:Vector3D;

      private var jedof:Vector3D;

      private var fyjihem:Vector3D;

      private var doni:Vector3D;

      private var cowes:Boolean = false;

      private var civud:Number = 0;

      public function configureCamera(param1:GameObject, param2:Boolean) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc3_:Rectangle = Parameters.data_.centerOnPlayer?sycobogow:doradu;
         if(Parameters.pevabak)
         {
            if(!Parameters.jelu)
            {
               _loc3_=quduzes;
            }
            else
            {
               _loc3_=rudeme;
            }
         }
         var _loc4_:Number = Parameters.data_.cameraAngle;
         this.configure(param1.x_,param1.y_,12,_loc4_,_loc3_,false);
         this.dicybeco=param2;
         return;
      }

      public function startJitter() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.cowes=true;
         this.civud=0;
         return;
      }

      private const hazypomac:Number = 0.5;

      private const boworoful:int = 10000;

      public function update(param1:Number) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if((this.cowes)&&this.civud<this.hazypomac)
         {
            this.civud=this.civud+param1*this.hazypomac/this.boworoful;
            if(this.civud>this.hazypomac)
            {
               this.civud=this.hazypomac;
            }
         }
         return;
      }

      private var tymul:Vector.<Number>;

      public function configure(param1:Number, param2:Number, param3:Number, param4:Number, param5:Rectangle, param6:Boolean) : void {
         var _loc10_:* = true;
         var _loc11_:* = false;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         if(this.cowes)
         {
            param1=param1+Wijawo.belugo(this.civud);
            param2=param2+Wijawo.belugo(this.civud);
         }
         this.x_=param1;
         this.y_=param2;
         this.z_=param3;
         this.angleRad_=param4;
         this.wyly=param5;
         this.muz.x=param1;
         this.muz.y=param2;
         this.muz.z=param3;
         this.doni.x=Math.cos(this.angleRad_);
         this.doni.y=Math.sin(this.angleRad_);
         this.doni.z=0;
         this.fyjihem.x=Math.cos(this.angleRad_+Math.PI/2);
         this.fyjihem.y=Math.sin(this.angleRad_+Math.PI/2);
         this.fyjihem.z=0;
         this.tymul[0]=this.doni.x;
         this.tymul[1]=this.fyjihem.x;
         this.tymul[2]=this.jedof.x;
         this.tymul[3]=0;
         this.tymul[4]=this.doni.y;
         this.tymul[5]=this.fyjihem.y;
         this.tymul[6]=this.jedof.y;
         this.tymul[7]=0;
         this.tymul[8]=this.doni.z;
         this.tymul[9]=param6?this.fyjihem.z:-1;
         this.tymul[10]=this.jedof.z;
         this.tymul[11]=0;
         this.tymul[12]=-this.muz.dotProduct(this.doni);
         this.tymul[13]=-this.muz.dotProduct(this.fyjihem);
         this.tymul[14]=-this.muz.dotProduct(this.jedof);
         this.tymul[15]=1;
         this.wydikajab.rawData=this.tymul;
         if(param6)
         {
            this.cydybeca=this.zele;
         }
         else
         {
            this.cydybeca=this.dowik;
         }
         this.wToS_.identity();
         this.wToS_.append(this.wydikajab);
         this.wToS_.append(this.cydybeca);
         if(param6)
         {
            _loc7_=this.z_*Math.tan(this.jinuluku.fieldOfView/2*Trig.lymiquwo);
            this.maxDist_=Math.SQRT2*_loc7_*1.4;
         }
         else
         {
            _loc8_=this.wyly.width/2*50;
            _loc9_=this.wyly.height/2*50;
            this.maxDist_=Math.sqrt(_loc8_*_loc8_+_loc9_*_loc9_)+1;
         }
         this.duluki=this.maxDist_*this.maxDist_;
         return;
      }
   }
[/CLASS]
}