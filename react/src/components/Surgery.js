import React from 'react';

const Surgery = (props) => {

  return (
    <div>
      <li><a href={`http://localhost:3000/surgery_groups/${props.id}/surgeries/${props.groupId}`}>{props.name}</a></li>
    </div>
  )
};

export default Surgery;
