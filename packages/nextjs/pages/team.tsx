import dynamic from 'next/dynamic';
import React from 'react'
import { MetaHeader } from '~~/components/MetaHeader';



const TeamComponent = dynamic(() => import("~~/components/mecha/Team"), { ssr: false });

const Team = () => {
  return (
    <>
        <MetaHeader title="Team | Mecha" />
        <div  className='w-[100%] h-[100%] bottom-10 fixed'>
            <TeamComponent />
        </div>
    </>
  )
}

export default Team