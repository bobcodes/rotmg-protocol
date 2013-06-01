package com.company.assembleegameclient.objects
{
   import com.company.assembleegameclient.engine3d.Gokot;
   import com.company.assembleegameclient.engine3d.ObjectFace3D;
   import __AS3__.vec.Vector;


   public class Stalagmite extends GameObject
   {

      public function Stalagmite(param1:XML) {
         var _loc5_:* = true;
         var _loc6_:* = false;
         super(param1);
         var _loc2_:Number = bs+cs*Math.random();
         var _loc3_:Number = 2*cs+bs+cs*Math.random();
         var _loc4_:Number = 4*cs+bs+cs*Math.random();
         moc=new Gokot();
         moc.vL_.push(Math.cos(_loc2_)*0.3,Math.sin(_loc2_)*0.3,0.0,Math.cos(_loc3_)*0.3,Math.sin(_loc3_)*0.3,0.0,Math.cos(_loc4_)*0.3,Math.sin(_loc4_)*0.3,0.0,0.0,0.0,0.6+0.6*Math.random());
         new Vector.<int>(3)[0]=0;
         new Vector.<int>(3)[1]=1;
         new Vector.<int>(3)[2]=3;
         new Vector.<int>(3)[0]=1;
         new Vector.<int>(3)[1]=2;
         new Vector.<int>(3)[2]=3;
         new Vector.<int>(3)[0]=2;
         new Vector.<int>(3)[1]=0;
         new Vector.<int>(3)[2]=3;
         moc.faces_.push(new ObjectFace3D(moc,new Vector.<int>(3)),new ObjectFace3D(moc,new Vector.<int>(3)),new ObjectFace3D(moc,new Vector.<int>(3)));
         moc.uvts_.push(0,1,0,0.5,1,0,1,1,0,0.5,0,0);
         return;
      }

      private static const bs:Number = Math.PI/6;

      private static const cs:Number = Math.PI/3;
   }

}